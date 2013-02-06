def add(x, y)
	x+y
end

def subtract(x, y)
	x-y
end

def sum(array)
	rt = 0
	for number in array
		rt = rt + number
	end
	rt
end

def multiply(array)
	rt =1
	for number in array
		rt = rt * number
	end
	rt
end

def power(x, y)
	x ** y
end

def factorial(num)
	rt = 1
	while(num > 1)
	  rt = rt * num
	  num = num - 1
	end
	rt
end