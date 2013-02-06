def reverser
	args = yield.split
	rt = []
	args.each do |arg|
		rt << arg.reverse
	end
	rt.join(" ")
end

def adder(num = 1)
	yield + num
end

def repeater(num = 1)
	while(num > 0)
		yield
		num -= 1
	end
end