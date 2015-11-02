class Book
	def initialize(title = "")
		@title = title
	end

	def title(string = "")
		@title
	end

	def title=(string = "")
		@title = titleize(string)
	end

	private
	def titleize(word)
	array = word.split
	output = ""
	array.each do |item|
		if !(["over", "the", "and", "to", "in", "a", "an", "of"].include?(item)) then
			item[0] = item[0].upcase
		end
		output << item + " "
	end
	output[0] = output[0].upcase
	output.strip
	end
end