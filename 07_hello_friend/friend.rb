class Friend
	def greeting(person = nil)
		if(person != nil)
			"Hello, #{person}!"
		else
			"Hello!"
		end
	end
end
