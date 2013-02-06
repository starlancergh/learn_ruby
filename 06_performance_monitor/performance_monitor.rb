def measure(num = 1)
	before = Time.now
	rep = num
	while (rep > 0)
		yield
		rep -= 1
	end
	after = Time.now
	(after - before) / num
end
