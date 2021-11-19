require "player"
require "mob"
require "jumper"
math.randomseed(os.time())

export player = Player!
test = Mob(200, 200)
test2 = Jumper(500, 500)

love.update = (dt) ->
	player\checkMovement!
	player\updatePosition!

love.draw = -> -- idk = (arg) -> ....
	player\draw!
	test\behavior!
	test\draw!
	test2\behavior!
	test2\draw!

