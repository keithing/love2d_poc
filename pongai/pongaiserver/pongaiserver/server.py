import argparse
import asyncio
from collections import deque
import json
import sys

from keras.models import load_model
import numpy as np

from pongaiserver.agent import KerasAgent


class AgentServerProtocol(asyncio.DatagramProtocol):
    """Based on https://docs.python.org/3/library/asyncio-protocol.html"""

    def __init__(self, agent):
        self.agent = agent

    def connection_made(self, transport):
        self.transport = transport

    def datagram_received(self, message, addr):
        sys.stdout.buffer.write(message + b"\n")  # Write bytes to stdout
        response = self.agent.listen(message)
        if response:
            self.transport.sendto(str(response).encode('utf8'), addr)

    def error_received(exc):
        print(exc)


def run_server(policy_path=None):

    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="127.0.0.1", type=str)
    parser.add_argument("--port", default=23876, type=int)
    args = parser.parse_args()

    loop = asyncio.get_event_loop()
    local_addr = (args.ip, args.port)
    agent = KerasAgent(policy_path)
    protocol_factory = lambda: AgentServerProtocol(agent=agent)

    udp_server = loop.create_datagram_endpoint(
        protocol_factory=protocol_factory,
        local_addr=local_addr)

    transport, _ = loop.run_until_complete(udp_server)
    try:
        loop.run_forever()
    except KeyboardInterrupt:
        pass
    finally:
        transport.close()
        loop.close()


if __name__ == "__main__":
    run_server()
