require "entity"
require "mob"
export Jumper

class Jumper extends Mob
	name: "jumper"
	behavior: =>
		@step!
		switch @facing
			when "north"
				if player.y < @y
					@jump!
			when "south"
				if (player.y > @y)
					@jump!
			when "east"
				if player.x > @x
					@jump!
			when "west"
				if player.x < @x
					@jump!
	jump: =>
		@dx, @dy = 0
		@x = player.x
		@y = player.y

