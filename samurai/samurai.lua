local samurai = {}

local insert = function(x, y) table.insert(x, y) end
local tilemap = love.graphics.newImage('assets/samurai.png')
insert(samurai, tilemap)

return samurai
