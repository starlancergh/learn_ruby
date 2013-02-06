def echo(args)
	args
end

def shout(args)
	args.upcase
end

def repeat(args, times=2)
	rt = args
	while(times > 1)
		rt = "#{rt} #{args}"
		times = times - 1
	end
	rt
end

def start_of_word(args, pos)
	args[0, pos]
end

def first_word(args)
	args[0, args.index(' ')]
end

def titleize(args)
	args = args.split
	for arg in args
		if arg != "and" && arg != "the" && arg != "over"
			arg = arg.capitalize!
		end
	end
	args = args.join(" ")
	args[0] = args[0].upcase
	args
end
