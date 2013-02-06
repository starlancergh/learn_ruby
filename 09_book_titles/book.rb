class Book
	def initialize
	end
	
	def title=(input)
	
		small = ["and", "of", "in", "the", "a", "an"]
		
		tsplit = input.split
		@title = []
		tsplit.each do |word|
			if !small.include?(word)
				word = word.capitalize
			end
			@title << word
		end
		@title = @title.join(" ")
		@title[0] = @title[0].upcase
	end
	
	def title
		@title
	end
end