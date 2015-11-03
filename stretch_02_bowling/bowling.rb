class Game
	def initialize
	end

	def score(score_array, score = 0, index = 0, frame = 1, ball = 1, double_turns = 0)
		if score_array[index] != nil
			
			if ball == 1 && score_array[index] == 10
				if double_turns >= 3 then
					score += 30
					double_turns -= 1
				elsif double_turns > 0 then
					score += 20
					double_turns -= 1
				else score += 10
				end
				double_turns += 2
				index += 1
				frame += 1
				score(score_array, score, index, frame, ball, double_turns)
			
			elsif ball == 1
				if double_turns >= 3 then
					score += 3 * score_array[index]
					double_turns -= 1
				elsif double_turns > 0 then
					score += 2 * score_array[index]
					double_turns -= 1
				else score += score_array[index]
				end
				index += 1
				ball = 2
				score(score_array, score, index, frame, ball, double_turns)
			
			elsif ball == 2 && score_array[index] + score_array[index - 1] == 10
				if double_turns >= 3 then
					score += 3 * score_array[index]
					double_turns -= 1
				elsif double_turns > 0 then
					score += 2 * score_array[index]
					double_turns -= 1
				else score += score_array[index]
				end
				double_turns += 1
				index += 1
				frame += 1
				ball = 1
				score(score_array, score, index, frame, ball, double_turns)

			elsif ball == 2
				if double_turns >= 3 then
					score += 3 * score_array[index]
					double_turns -= 1
				elsif double_turns > 0 then
					score += 2 * score_array[index]
					double_turns -= 1
				else score += score_array[index]
				end
				index += 1
				frame += 1
				ball = 1
				score(score_array, score, index, frame, ball, double_turns)
			end
		else
			return score
		end
	end
end

game = Game.new
puts game.score([10,10,10,10,10,10,10,10,10,10,10])