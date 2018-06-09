debug = true
local sti = require("sti")
local anim8 = require("anim8")

local function quit_on_escape()
  if love.keyboard.isDown("escape") then
    love.event.push('quit')
  end
end

local keypress = love.keyboard.isDown
-------------------------------------------------------------------------------
-- Networking
-------------------------------------------------------------------------------

local socket = require("socket")

-------------------------------------------------------------------------------
-- Main
-------------------------------------------------------------------------------


function love.load()
  map = sti("desert.lua")

  udp = socket.udp()
  udp:settimeout(0)
  udp:setsockname("127.0.0.1", 8000)
  --udp:setoption('broadcast', true)
  s = "hi there!"
  data = nil
  msg = nil

	local layer = map:addCustomLayer("Sprites", 5)

	-- Get player spawn object
	local player
	for k, object in pairs(map.objects) do
			if object.name == "Player" then
					player = object
					break
			end
	end

	-- Create player object
  local spritesheet = love.graphics.newImage('assets/hero.png')
  local g = anim8.newGrid(32, 32, spritesheet:getWidth(), spritesheet:getHeight())
	layer.player = {
			x      = 32,
			y      = 32,
      spritesheet = spritesheet,
			animations = {
					walk_up = anim8.newAnimation(g(1, '1-2'), .2),
					walk_down = anim8.newAnimation(g(1, '3-4'), .2),
					walk_right = anim8.newAnimation(g(1, '5-6'), .2),
					walk_left = anim8.newAnimation(g(1, '7-8'), .2),
					stand_up = anim8.newAnimation(g(1, 1), .2),
					stand_down = anim8.newAnimation(g(1, 3), .2),
					stand_right = anim8.newAnimation(g(1, 5), .2),
					stand_left = anim8.newAnimation(g(1, 7), .2)
				},
      direction = 'd'
	}
  layer.player.animation = layer.player.animations.stand_down

	-- Draw player
	layer.draw = function(self, dt)
      local animation = self.player.animation
      local quad = animation.frames[animation.position]
      love.graphics.draw(self.player.spritesheet, quad,
                         self.player.x, self.player.y)
	end

	-- Add controls to player
	layer.update = function(self, dt)
			-- 96 pixels per second
			local speed = 96
      local p = self.player

			-- Move player up
			if keypress("w") or keypress("up") then
					p.y = p.y - speed * dt
          p.animation = p.animations.walk_up
          p.direction = 'u'
			elseif keypress("s") or keypress("down") then
					p.y = p.y + speed * dt
          p.animation = p.animations.walk_down
          p.direction = 'd'
			elseif keypress("a") or keypress("left") then
					p.x = p.x - speed * dt
          p.animation = p.animations.walk_left
          p.direction = 'l'
			elseif keypress("d") or keypress("right") then
					p.x = p.x + speed * dt
          p.animation = p.animations.walk_right
          p.direction = 'r'
      else
        if p.direction == 'u' then
          p.animation = p.animations.stand_up
        elseif p.direction == 'd' then
          p.animation = p.animations.stand_down
        elseif p.direction == 'l' then
          p.animation = p.animations.stand_left
        else
          p.animation = p.animations.stand_right
        end
			end
      p.animation:update(dt)
	end
end

function love.update(dt)
  quit_on_escape(dt)
  repeat
    data, msg = udp:receive()
    udp:sendto('wat?', '127.0.0.1', 8001)
    if data then
      s = string.format("%s", data)
      udp:sendto('wat?', '127.0.0.1', 8001)
    end
  until not data
  map:update(dt)
end


function love.draw(dt)
	-- Scale world
	local scale = 3
	local screen_width = love.graphics.getWidth() / scale
	local screen_height = love.graphics.getHeight() / scale

	-- Translate world so that player is always centred
	local player = map.layers["Sprites"].player
	local tx = math.floor(player.x - screen_width / 2)
	local ty = math.floor(player.y - screen_height / 2)

	-- Transform world
	love.graphics.scale(scale)
	love.graphics.translate(-tx, -ty)
  map:draw(dt)
  love.graphics.printf(s, 0, player.y, player.x, 'right')
end
