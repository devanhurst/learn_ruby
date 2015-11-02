class Temperature
	attr_accessor :options
	def initialize(options) #options is a hash
		@options = options
	end

	def to_fahrenheit
		if @options[:f] != nil then return @options[:f]
		elsif @options[:c] != nil then return @options[:c] * 9 / 5 + 32
		end
	end

	def to_celsius
		if @options[:c] != nil then return @options[:c]
		elsif @options[:f] != nil then return (@options[:f] - 32 ) * 5 / 9
		end
	end

	def self.in_fahrenheit(value)
		new({f: value})
	end

	def self.in_celsius(value)
		new({c: value})
	end
end

class Celsius < Temperature
	def initialize(temperature)
		@options = {c: temperature}
	end
end

class Fahrenheit < Temperature
	def initialize(temperature)
		@options = {f: temperature}
	end
end