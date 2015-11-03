require 'pry'

class Game
	def initialize()
	end

	@@frames = []

	def score(score_array, frame_number = 1, index = 0, ball = 1) #ANALYZES SCORE ARRAY
		length = score_array.length
		if length == index
			return 'done'
		end
		ball_score = score_array[index]
		puts ball_score
		if ball == 1 then
			if ball_score == 10 then #STRIKE
				@@frames << Frame.new(frame_number, ball_score, "strike") # ADD STRIKE FRAME
				score(score_array, frame_number + 1, index + 1, ball)
			else #GO TO BALL 2
				#binding.pry
				score(score_array, frame_number, index + 1, 2)
			end
		elsif ball == 2 then
			combined_score = ball_score + score_array[index - 1]
			if combined_score == 10 then #SPARE
				@@frames << Frame.new(frame_number, combined_score, "spare")
				score(score_array, frame_number + 1, index + 1, 1)
			else #RECORD SCORE, GO TO NEXT FRAME
				@@frames << Frame.new(frame_number, combined_score)
				score(score_array, frame_number + 1, index + 1, 1)
			end
		end
	end

	def print_frames
		@@frames.each do |frame|
			puts "FRAME #{frame.number}: #{frame.score} #{frame.bonus}"
		end
	end
end

class Frame
	attr_accessor :score, :bonus, :number
	def initialize(number, score = 0, bonus = "")
		@number = number
		@score = score
		@bonus = bonus
	end
end

game = Game.new
game.score([5, 3, 10, 10, 5, 5, 7, 2, 7, 3, 10, 10, 10, 10, 10, 10])
game.print_frames