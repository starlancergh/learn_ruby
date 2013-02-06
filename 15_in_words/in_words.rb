class Fixnum
	def in_words
		if(self == 0)
			"zero"
		else
			wordify(self)
		end
	end
	
	def wordify(number)
		if(number >= 1000000000000)
			(wordify(number / 1000000000000) + " trillion " + wordify(number % 1000000000000)).strip
		elsif(number >= 1000000000)
			(wordify(number / 1000000000) + " billion " + wordify(number % 1000000000)).strip	
		elsif(number >= 1000000)
			(wordify(number / 1000000) + " million " + wordify(number % 1000000)).strip
		elsif(number >= 1000)
			(wordify(number / 1000) + " thousand " + wordify(number % 1000)).strip
		elsif(number >= 100)
			(wordify(number / 100) + " hundred " + wordify(number % 100)).strip
		elsif(number.between?(90, 99))
			("ninety " + wordify(number % 10)).strip
		elsif(number.between?(80, 89))
			("eighty " + wordify(number % 10)).strip
		elsif(number.between?(70, 79))
			("seventy " + wordify(number % 10)).strip
		elsif(number.between?(60, 69))
			("sixty " + wordify(number % 10)).strip
		elsif(number.between?(50, 59))
			("fifty " + wordify(number % 10)).strip
		elsif(number.between?(40, 49))
			("forty " + wordify(number % 10)).strip
		elsif(number.between?(30, 39))
			("thirty " + wordify(number % 10)).strip			
		elsif(number.between?(20, 29))
			("twenty " + wordify(number % 10)).strip
		elsif(number == 10)
			"ten"
		elsif(number == 11)
			"eleven"
		elsif(number == 12)
			"twelve"
		elsif(number == 13)
			"thirteen"
		elsif(number == 15)
			"fifteen"
		elsif(number == 18)
			"eighteen"
		elsif(number.between?(10, 19))
			wordify(number % 10) + "teen"
		elsif(number == 0)
			""
		elsif(number == 1)
			"one"
		elsif(number == 2)
			"two"
		elsif(number == 3)
			"three"
		elsif(number == 4)
			"four"
		elsif(number == 5)
			"five"
		elsif(number == 6)
			"six"
		elsif(number == 7)
			"seven"
		elsif(number == 8)
			"eight"
		elsif(number == 9)
			"nine"
		end
	end
end


class Bignum
	def in_words
		if(self == 0)
			"zero"
		else
			wordify(self)
		end
	end
	
	def wordify(number)
		if(number >= 1000000000000)
			(wordify(number / 1000000000000) + " trillion " + wordify(number % 1000000000000)).strip
		elsif(number >= 1000000000)
			(wordify(number / 1000000000) + " billion " + wordify(number % 1000000000)).strip	
		elsif(number >= 1000000)
			(wordify(number / 1000000) + " million " + wordify(number % 1000000)).strip
		elsif(number >= 1000)
			(wordify(number / 1000) + " thousand " + wordify(number % 1000)).strip
		elsif(number >= 100)
			(wordify(number / 100) + " hundred " + wordify(number % 100)).strip
		elsif(number.between?(90, 99))
			("ninety " + wordify(number % 10)).strip
		elsif(number.between?(80, 89))
			("eighty " + wordify(number % 10)).strip
		elsif(number.between?(70, 79))
			("seventy " + wordify(number % 10)).strip
		elsif(number.between?(60, 69))
			("sixty " + wordify(number % 10)).strip
		elsif(number.between?(50, 59))
			("fifty " + wordify(number % 10)).strip
		elsif(number.between?(40, 49))
			("forty " + wordify(number % 10)).strip
		elsif(number.between?(30, 39))
			("thirty " + wordify(number % 10)).strip			
		elsif(number.between?(20, 29))
			("twenty " + wordify(number % 10)).strip
		elsif(number == 10)
			"ten"
		elsif(number == 11)
			"eleven"
		elsif(number == 12)
			"twelve"
		elsif(number == 13)
			"thirteen"
		elsif(number == 15)
			"fifteen"
		elsif(number == 18)
			"eighteen"
		elsif(number.between?(10, 19))
			wordify(number % 10) + "teen"
		elsif(number == 0)
			""
		elsif(number == 1)
			"one"
		elsif(number == 2)
			"two"
		elsif(number == 3)
			"three"
		elsif(number == 4)
			"four"
		elsif(number == 5)
			"five"
		elsif(number == 6)
			"six"
		elsif(number == 7)
			"seven"
		elsif(number == 8)
			"eight"
		elsif(number == 9)
			"nine"
		end
	end
end