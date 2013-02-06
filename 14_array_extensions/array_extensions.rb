class Array

	def sum
		tot = 0
		self.each{|val| tot = tot + val}
		tot
	end

	def square
		len = self.length
		index = 0
		new = []
		while(index < len)
			new[index] = self[index] * self[index]
			index = index + 1
		end
		new
	end
	
	def square!
		self.replace(self.square)
	end
end