require "entity"
export Player

class Player extends Entity
	name: "player"
	x: 0
	y: 0
	width: 25
	height: 25
	speed: 5
	draw: =>
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.rectangle("fill", @x, @y, @width, @height)
	checkMovement: =>
		if (love.keyboard.isDown("left"))
			@dx = @speed * -1
		elseif (love.keyboard.isDown("right"))
			@dx = @speed
		elseif (love.keyboard.isDown("up"))
			@dy = @speed * -1
		elseif (love.keyboard.isDown("down"))
			@dy = @speed
		else
			@dx = 0
			@dy = 0

