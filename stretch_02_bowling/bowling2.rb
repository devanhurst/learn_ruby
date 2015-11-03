class Game
	def initialize
	end
end

class Frame
	attr_accessor :ball, :score
	def initialize(ball = 1, score = 0)
		@ball = ball
		@score = score
	end
end