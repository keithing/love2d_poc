local sti = require("sti")
local anim8 = require("anim8")

map = {}
map.layer = {}
local keypress = love.keyboard.isDown


local function quit_on_escape()
  if love.keyboard.isDown("escape") then
    love.event.push('quit')
  end
end


function love.load()
  magemap = sti("assets/magecity.lua", {"bump"})
  local k
  local v
  local a
  local b
  for k, v in pairs(magemap.tilesets[1].tiles[1]) do
    print(k)
    print(v)
  end
  love.physics.setMeter(64) --the height of a meter our worlds will be 64px
  world = love.physics.newWorld(0, 0, true)
  magemap:bump_init(world)

  objects = {} -- table to hold all our physical objects

  --let's create the ground
  objects.ground = {}
  objects.ground.body = love.physics.newBody(world, 650/2, 650-50/2)
  objects.ground.shape = love.physics.newRectangleShape(650, 50) --make a rectangle with a width of 650 and a height of 50
  objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape, 1); --attach shape to body
  objects.ground.fixture:setFriction(1.0)

  --let's create a ball
  objects.ball = {}
  objects.ball.body = love.physics.newBody(world, 650/2, 650/2, "dynamic")
  objects.ball.shape = love.physics.newCircleShape(20)
  objects.ball.fixture = love.physics.newFixture(objects.ball.body, objects.ball.shape, 1) -- Attach fixture to body and give it a density of 1.
  objects.ball.fixture:setRestitution(0.5) --bounce
  objects.ball.fixture:setFriction(1.0)
  objects.ball.body:setLinearDamping(1.0)

  --let's create a couple blocks to play around with
  objects.block1 = {}
  objects.block1.body = love.physics.newBody(world, 200, 550, "dynamic")
  objects.block1.shape = love.physics.newRectangleShape(0, 0, 50, 100)
  objects.block1.fixture = love.physics.newFixture(objects.block1.body, objects.block1.shape, 5) -- A higher density gives it more mass.

  objects.block2 = {}
  objects.block2.body = love.physics.newBody(world, 200, 400, "dynamic")
  objects.block2.shape = love.physics.newRectangleShape(0, 0, 100, 50)
  objects.block2.fixture = love.physics.newFixture(objects.block2.body, objects.block2.shape, 2)

  --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248) --set the background color to a nice blue
  love.window.setMode(1920, 1080) --set the window dimensions to 650 by 650

	-- Create player object
  local spritesheet = love.graphics.newImage('assets/hero.png')
  local g = anim8.newGrid(32, 32, spritesheet:getWidth(), spritesheet:getHeight())
	map.layer.player = {
      x = objects.ball.body:getX(),
      y = objects.ball.body:getY(),
      spritesheet = spritesheet,
			animations = {
					walk_up = anim8.newAnimation(g(1, '1-2'), .4),
					walk_down = anim8.newAnimation(g(1, '3-4'), .4),
					walk_right = anim8.newAnimation(g(1, '5-6'), .4),
					walk_left = anim8.newAnimation(g(1, '7-8'), .4),
					stand_up = anim8.newAnimation(g(1, 1), .2),
					stand_down = anim8.newAnimation(g(1, 3), .2),
					stand_right = anim8.newAnimation(g(1, 5), .2),
					stand_left = anim8.newAnimation(g(1, 7), .2)
				},
      animation = anim8.newAnimation(g(1, 3), .2),
      direction = 'd'
	}

	-- Draw player
	map.layer.draw = function(self, dt)
      local animation = self.player.animation
      local quad = animation.frames[animation.position]
      love.graphics.draw(self.player.spritesheet, quad,
                         self.player.x, self.player.y)
	end

	-- Add controls to player
	map.layer.update = function(self, dt)

      local p = self.player
      p.x = objects.ball.body:getX() - 15
      p.y = objects.ball.body:getY() - 15

			-- Move player up
			if keypress("w") or keypress("up") then
          p.animation = p.animations.walk_up
          p.direction = 'u'
			elseif keypress("s") or keypress("down") then
          p.animation = p.animations.walk_down
          p.direction = 'd'
			elseif keypress("a") or keypress("left") then
          p.animation = p.animations.walk_left
          p.direction = 'l'
			elseif keypress("d") or keypress("right") then
          p.animation = p.animations.walk_right
          p.direction = 'r'
      else
        if p.direction == 'u' then
          p.animation = p.animations.stand_up
        elseif p.direction == 'd' then
          p.animation = p.animations.stand_down elseif p.direction == 'l' then
          p.animation = p.animations.stand_left
        else
          p.animation = p.animations.stand_right
        end
			end
      p.animation:update(dt)
	end
end


local dash_cooldown = 1000

function dash(dash_x, dash_y)
  if love.keyboard.isDown("space") and dash_cooldown > 1.0 then
    local x = objects.ball.body:getX()
    local y = objects.ball.body:getY()
    objects.ball.body:setX(x + dash_x)
    objects.ball.body:setY(y + dash_y)
    dash_cooldown = 0
  end
end


function direction_inputs()
  local dir_x = 0
  local dir_y = 0
  if love.keyboard.isDown("right") then
    dir_x = dir_x + 1
  end
  if love.keyboard.isDown("left") then
    dir_x = dir_x - 1
  end
  if love.keyboard.isDown("up") then
    dir_y = dir_y - 1
  end
  if love.keyboard.isDown("down") then
    dir_y = dir_y + 1
  end
  return dir_x, dir_y
end


function love.update(dt)
  quit_on_escape()
  magemap:update(dt)
  map.layer.update(map.layer, dt)
  world:update(dt) --this puts the world into motion
  dash_cooldown = dash_cooldown + dt

  --here we are going to create some keyboard events
  dir_x, dir_y = direction_inputs()
  dash(dir_x * 50, dir_y * 50)
  objects.ball.body:applyForce(dir_x * 200, dir_y * 200)
end

function love.draw(dt)
  magemap:draw(dt)
  --love.graphics.setColor(72, 160, 14) -- set the drawing color to green for the ground
  love.graphics.polygon("fill", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates

  --love.graphics.setColor(50, 50, 50) -- set the drawing color to grey for the blocks
  love.graphics.polygon("fill", objects.block1.body:getWorldPoints(objects.block1.shape:getPoints()))
  love.graphics.polygon("fill", objects.block2.body:getWorldPoints(objects.block2.shape:getPoints()))
  map.layer.draw(map.layer, dt)
end
