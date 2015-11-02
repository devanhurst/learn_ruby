class Array

	def sum
		sum = 0
		self.each do |i|
			sum += i
		end
		sum
	end

	def square
		new_array = []
		self.each do |i|
			new_array << i * i
		end
		new_array
	end

	def square!
		count = 0
		self.each do |i|
			self[count] = i * i
			count += 1
		end
	end
end