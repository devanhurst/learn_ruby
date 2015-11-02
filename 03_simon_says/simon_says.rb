def echo(word)
	word.to_s
end

def shout(word)
	word.to_s.upcase
end

def repeat(word, num = 2)
	output = ""
	word = word.to_s
	(1..num).each do |i|
		output << "#{word} "
	end
	output.strip
end

def start_of_word(word, characters = 1)
	word = word.to_s
	word[0..characters-1]
end

def first_word(word)
	word.to_s.split[0]
end

def titleize(word)
	array = word.split
	output = ""
	array.each do |item|
		if !(["over", "the", "and", "to"].include?(item)) then
			item[0] = item[0].upcase
		end
		output << item + " "
	end
	output[0] = output[0].upcase
	output.strip
end