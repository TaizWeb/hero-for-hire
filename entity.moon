export Entity

class Entity
	x: 0
	y: 0
	dx: 0
	dy: 0
	width: 25
	height: 25
	speed: 8
	facing: "south"
	new: (x, y) =>
		@x = x
		@y = y
	draw: =>
		love.graphics.setColor(1, 0, 0, 1)
		love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	updatePosition: =>
		@x += @dx
		@y += @dy

