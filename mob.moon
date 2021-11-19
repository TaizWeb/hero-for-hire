require "entity"
export Mob

class Mob extends Entity
	name: "mob"
	x: 200
	y: 200
	direction: ""
	remainingSteps: 0
	speed: 1
	behavior: =>
		-- Okay, so you can't do !(@foo) without the compiler loosing it's mind
		if @remainingSteps == 0 -- If the entity is not moving...
			if math.random(120) == 1 -- Move once every ~2 seconds
				@dx, @dy = 0
				@direction = math.random(4)
				@wander(@direction)
		else
			@remainingSteps -= 1
			@updatePosition!
	wander: (direction) =>
		@remainingSteps = 40
		switch direction
			when 1
				@dx = @speed
			when 2
				@dx = @speed * -1
			when 3
				@dy = @speed
			when 4
				@dy = @speed * -1

