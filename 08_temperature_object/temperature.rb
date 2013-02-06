class Temperature
	def initialize(options = {})
		if(options[:f])
			@tempf = options[:f]
		elsif(options[:c])
			@tempf = options[:c] * 9.0 / 5 + 32
		end
	end
	
	def in_fahrenheit
		@tempf
	end
	
	def in_celsius
		(@tempf - 32.0) * 5 / 9
	end

	def self.from_celsius(c)
		Temperature.new(:c => c)
	end

	def self.from_fahrenheit(f)
		Temperature.new(:f => f)
	end
end

class Celsius < Temperature
	def initialize(c)
		super(:c => c)
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super(:f => f)
	end
end