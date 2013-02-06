class Timer
	def initialize
		@seconds = 0
	end
	
	def seconds
		@seconds
	end

	def seconds=(sec)
		@seconds = format('%02d', sec % 60)
		@minutes = format('%02d', (sec / 60) % 60)
		@hours = format('%02d', (sec / 3600) % 60)
	end
	3
	def time_string
		"#{@hours}:#{@minutes}:#{seconds}"
	end
end
