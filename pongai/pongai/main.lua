local socket = require("socket")

--debug = true

-------------------------------------------------------------------------------
-- Intialize Variables
-------------------------------------------------------------------------------

local game = {width = love.graphics.getWidth(),
              height = love.graphics.getHeight() - 80}
local pad_width = 15
local pad_height = 65
local left_pad = {x = 2,
                  y = game.height/2,
                  vy = 0,
                  height = pad_height,
                  width = pad_width}
local right_pad = {x = game.width - pad_width - 2,
                   y = game.height/2,
                   vy = 0,
                   height = pad_height,
                   width = pad_width}
local init_ball_speed = 200
local ball = {x = game.width / 2,
              y = game.height / 2,
              vx = -init_ball_speed,
              vy = init_ball_speed,
              radius = 10}
local state_history = {}
local ai_mode = false
local current_loss = 0
local reward = 0
local move = 3 --stand still

--[[
The spec reads [
  reward -> int between -1 and 1
  move -> int with 1 for up, 2 for down and 3 for stand still
  ai_mode -> 1 indicating ai made the move, 0 for human
  ball.x -> int, x position of ball
  ball.y -> int, y position of ball
  left_pad.y -> int, y position of the left pad
  right_pad.y -> int, y position of the right pad
]
where ball/pad/ai_mode are at time t, move is the move taken after
witnessing the game state at time t and reward is the reward received for
the previous move (t - 1).
--]]
local message_spec = "[%i, %i, %i, %i, %i, %i, %i]"


-------------------------------------------------------------------------------
-- Game
-------------------------------------------------------------------------------


local function bounce()
  ball.vy = math.random(-2, 2) * ball.vx
  ball.vx = ball.vx * math.random(1.0, 1.3) * -1
end


local function ball_pad_collision()
  local left_x = ball.x - ball.radius < left_pad.x + left_pad.width
  local left_y = (ball.y <= left_pad.y + left_pad.height and
                  ball.y >= left_pad.y)
  local right_x = ball.x + ball.radius > right_pad.x
  local right_y = (ball.y <= right_pad.y + right_pad.height and
                   ball.y >= right_pad.y)
  if (left_x and left_y) then
    ball.x = left_pad.x + left_pad.width + ball.radius
    bounce()
  end
  if (right_x and right_y) then
    ball.x = right_pad.x - ball.radius
    bounce()
  end
end


local function move_ball(dt)
	ball.x = (ball.x + ball.vx * dt)
	ball.y = (ball.y + ball.vy * dt)
	if (ball.y >= game.height or ball.y <= 0) then
    ball.y = math.min(game.height, math.max(ball.y, 0))
    ball.vy = -ball.vy
  end
  ball_pad_collision()
end

-------------------------------------------------------------------------------
--- Movement
-------------------------------------------------------------------------------

local function human_input()
  if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
    move = 1
  elseif love.keyboard.isDown("w") or love.keyboard.isDown("up") then
    move = 2
  else
    move = 3
  end
  return move
end


local function ai_input()
  local tries = 0
  repeat
    data, msg = udp:receive()
    tries = tries + 1
  until (data or tries > 2)
  return tonumber(data)
end


local function move_left_pad(dt)
  local new_y
  move = ai_input() or human_input()
  if  move == 1 then
    new_y = math.min(game.height - left_pad.height, left_pad.y + 500 * dt)
  elseif move == 2 then
    new_y = math.max(0, left_pad.y + -500 * dt)
  else
    new_y = left_pad.y
  end
  left_pad.vy = (left_pad.y - new_y) / dt
  left_pad.y = new_y
end



local function move_right_pad(dt)
  -- Simple AI to play against
  local pad_center = right_pad.y
  if ball.y > pad_center then
    new_y = math.min(game.height - right_pad.height, right_pad.y + 500 * dt)
  elseif ball.y < pad_center then
    new_y = math.max(0, right_pad.y + -500 * dt)
  else
    new_y = right_pad.y
  end
  right_pad.vy = (right_pad.y - new_y) / dt
  right_pad.y = new_y
end



local function ball_out_of_play()
  if ball.x < 0 or (ball.x + ball.radius) > game.width then
    reward = ball.x < 0 and -1 or 1
    local x_direction = math.random() > .5 and -1 or 1
    ball.x = game.width / 2
    ball.y = game.height / 2
    ball.vx = math.random(180, 220) * x_direction
    ball.vy = math.random(-220, 220)
  else
    reward = 0
  end
end


-------------------------------------------------------------------------------
-- Main
-------------------------------------------------------------------------------


function game_state_to_server()
  local encoded_state = string.format(message_spec, reward, move,
                                      booltoint(ai_mode), ball.x, ball.y,
                                      left_pad.y, right_pad.y)
  udp:send(encoded_state)
end

function booltoint(bool)
  return bool and 1 or 0
end

function love.load()
  udp = socket.udp()
  udp:settimeout(0)
  udp:setpeername("127.0.0.1", "23876")
  love.graphics.setNewFont(24)
end


function love.keyreleased(key)
  if key == "escape" then
    love.event.push('quit')
  elseif key == "m" then
    ai_mode = not ai_mode
  end
end


function love.update(dt)
  game_state_to_server()
  -- naive 60 fps cap
  if dt < 1/60 then
     love.timer.sleep(1/60 - dt)
  end
  move_left_pad(dt)
  move_right_pad(dt)
  move_ball(dt)
  ball_out_of_play()
end


function love.draw(dt)
	love.graphics.rectangle("fill", left_pad.x, left_pad.y, left_pad.width,
                          left_pad.height)
	love.graphics.rectangle("fill", right_pad.x, right_pad.y, right_pad.width,
                          right_pad.height)
	love.graphics.circle("fill", ball.x, ball.y, ball.radius)
  local mode_str
  if ai_mode then
    mode_str = "AI Mode: Fear me humans!"
  else
    mode_str = "Human Mode: Good luck, we're counting on you!"
  end
  love.graphics.printf(mode_str, 0, game.height + 10, game.width, 'center')
end
