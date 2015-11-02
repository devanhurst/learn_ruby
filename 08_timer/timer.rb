class Timer
	attr_reader :time_string, :seconds

	def initialize(seconds = 0, time_string = "00:00:00")
		@seconds = seconds
		@time_string = time_string
	end

	def seconds=(value)
		hours = 00
		minutes = 00
		if value >= 3600 then
			hours = value / 3600
		end
		if value >= 60
			minutes = (value - (3600 * hours)) / 60
		end
		seconds = value - (3600 * hours) - (60 * minutes)
		@time_string = "#{format('%02d', hours)}:#{format('%02d', minutes)}:#{format('%02d', seconds)}"
		@seconds = value
	end
end