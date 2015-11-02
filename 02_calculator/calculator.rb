def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	sum = 0
	array.each do |i|
		sum += i
	end
	sum
end

def multiply(array)
	product = 1
	array.each do |i|
		product = product * i
	end
	product
end

def factorial(n, current = 1)
	if n != 0 then
		current = n * current
		factorial(n - 1, current)
	else
		current
	end
end 