require("player")
require("mob")
math.randomseed(os.time())
local player = Player()
local test = Mob()
love.update = function(dt)
  player:checkMovement()
  return player:updatePosition()
end
love.draw = function()
  player:draw()
  test:behavior()
  return test:draw()
end
