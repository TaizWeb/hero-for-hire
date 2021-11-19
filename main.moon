require "player"
require "mob"
math.randomseed(os.time())

player = Player!
test = Mob!

love.update = (dt) ->
	player\checkMovement!
	player\updatePosition!

love.draw = -> -- idk = (arg) -> ....
	player\draw!
	test\behavior!
	test\draw!

