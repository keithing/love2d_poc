from collections import deque, namedtuple
import json

from keras.utils import to_categorical
from keras.models import Sequential, load_model, save_model
from keras.layers import Dense, Activation
import numpy as np

from pongaiserver.ascii import PRECOCIOUS_YOUTHBOT, GRIZZLED_INSTRUCTOR


EnvironmentStep = namedtuple("EnvironmentStep",
                             ["reward", "action", "ai_mode", "state"])


def default_policy_factory():
    policy = Sequential([
        Dense(64, input_shape=(12,)),
        Activation('relu'),
        Dense(32),
        Activation('relu'),
        Dense(3),
        Activation('softmax'),
    ])
    policy.compile(optimizer='adam',
                   loss='categorical_crossentropy')
    return policy


def decode_message(message):
    x = json.loads(message.decode('utf8'))
    return EnvironmentStep(x[0], x[1], x[2], x[3:])


def train_agent(examples_path, new_policy_path, n_updates=100,
                prev_policy_path=None, sample=1.0):
    trainer = SupervisedTrainer(examples_path, sample)
    agent = KerasAgent(prev_policy_path)
    trainer.train(agent, n_updates)
    agent.save_policy(new_policy_path)
    return new_policy_path


class KerasAgent:

    def __init__(self, policy_path=None):
        """Initialize agent with a policy and 3 blank states."""
        if policy_path:
            self.policy = load_model(policy_path)
        else:
            self.policy = default_policy_factory()
        self.state = deque([[0, 0, 0, 0],
                            [0, 0, 0, 0],
                            [0, 0, 0, 0]])

    def act(self):
        """Predict best action given the current rolling window."""
        x = np.reshape(np.array(self.state), (1, 12))
        preds = self.policy.predict(x)
        return np.argmax(preds) + 1  # Lua is 1 indexed

    def listen(self, message):
        """Add a new state to the fixed length rolling window."""
        example = decode_message(message)
        self.state.append(example.state)
        self.state.popleft()
        return self.act() if example.ai_mode else None

    def update_policy(self, state, action):
        try:
            loss = self.policy.train_on_batch(state, action)
            return loss
        except Exception as e:
            print(e)
            pass

    def save_policy(self, path):
        self.policy.save(path)

    def __str__(self):
        return PRECOCIOUS_YOUTHBOT


class SupervisedTrainer:

    def __init__(self, examples_path, sample=1.0):
        self.examples = []
        self.read_examples(examples_path, sample)

    def read_examples(self, examples_path, sample=1.0):
        """Read a sample of messages from client into memory."""

        with open(examples_path, "rb") as f:
            for line in f:
                if np.random.random() > sample:
                    continue
                example = decode_message(line)
                if not example.ai_mode:
                    self.examples.append(example)

    def sample_examples(self, size=128, window=3):
        """Randomly select consecutive windows of game state."""
        X = []
        y = []
        n = len(self.examples)
        for _ in range(size):
            i = np.random.randint(window, n)  # must have complete window
            envs = self.examples[i-window:i]
            X.append(np.reshape([x.state for x in envs], -1))
            y.append(envs[-1].action - 1)  # Actions are 1 indexed
        return np.array(X), to_categorical(y, num_classes=3)

    def train(self, agent, n_updates=1000):
        losses = []
        for i in range(n_updates):
            if i % 1000 == 999:
                mean = np.mean(losses)
                std = np.std(losses)
                print("Loss: {} +/- {} on last 1000 examples"
                      .format(np.mean(losses), np.std(losses)))
                losses = []
            X, y = self.sample_examples()
            loss = agent.update_policy(X, y)
            losses.append(loss)

    def __str__(self):
        return GRIZZLED_INSTRUCTOR



if __name__ == "__main__":
    train_agent("pongai_log.txt", "policy.h5", n_updates=10000)
