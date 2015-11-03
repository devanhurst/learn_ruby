class Changer
	def initialize
	end

	def self.make_change(value)
		change_array = []
		while value >= 25
			change_array << 25
			value -= 25
		end
		while value >= 10
			change_array << 10
			value -= 10
		end
		while value >= 5
			change_array << 5
			value -= 5
		end
		while value >= 1
			change_array << 1
			value -= 1
		end
		return change_array
	end
end