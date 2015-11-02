def reverser
	output = ""
	array = yield.split
	array.each do |word|
		output << word.reverse + " "
	end
	output.strip
end

def adder(n = 1)
	yield + n
end

def repeater(x = 1)
	(1..x).each do |i|
		yield
	end
end