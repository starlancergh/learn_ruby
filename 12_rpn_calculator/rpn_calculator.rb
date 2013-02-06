class RPNCalculator
	def initialize
		@stack = Array.new()
	end
	
	def push(input)
		@stack.push(input)
	end
	
	def plus
		check_exception
		@stack.push(@stack.pop + @stack.pop)
	end
	
	def minus
		check_exception
		@stack.push(@stack.pop - @stack.pop)
	end
	
	def divide
		check_exception
		@stack.push(1.0 * @stack.pop / @stack.pop)
	end
	
	def times
		check_exception
		@stack.push(@stack.pop * @stack.pop)
	end
	
	def value
		@stack.last
	end
	
	def check_exception
		if(@stack.size < 2)
			raise "calculator is empty"
		end
	end
	
	def tokens(string)
		len = string.size
		result = []
		index = 0
		operators = ["+", "-", "*", "/"]
		numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
		while (index < len)
			if(string[index] == "+")
				result.push(:+)
			elsif(string[index] == "-")
				result.push(:-)
			elsif(string[index] == "/")
				result.push(:/)
			elsif(string[index] == "*")
				result.push(:*)
			elsif(numbers.include?(string[index]))
				result.push(string[index].to_i)
			end
			index += 1
		end
		result
	end
	
	def evaluate(string)
		arr = tokens(string)
		@calc = RPNCalculator.new
		arr.each do |v|
			if([0, 1, 2, 3, 4, 5, 6, 7, 8, 9].include?(v))
				@calc.push(v)
			elsif(v == :+)
				@calc.plus
			elsif(v == :-)
				@calc.minus
			elsif(v == :*)
				@calc.times
			elsif(v == :/)
				@calc.divide
			end
		end
		@calc.value
	end
end