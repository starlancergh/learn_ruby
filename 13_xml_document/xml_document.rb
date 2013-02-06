class XmlDocument
	def initialize(indents = false)
		@indent = indents
	end
	
	def method_missing(sym, *args, &block)
		string = send sym, *args, &block
		# string = indent(string)
		string
	end
	
	def send(tag, *args)
		@indented = @indented + 1
		if(block_given?)
			if(@indent)
				blah = yield
				len = blah.length
				index = 0
				while (index < len)
					if(blah[index] == "<")
						blah.insert(index, "  ")
						len = blah.length
						index = index + 2
					end
					index = index + 1
				end
				"<#{tag}>\n" + "#{blah}" + "</#{tag}>\n"
			else
				"<#{tag}>#{yield}</#{tag}>"
			end
		elsif(args != [])
			blurb = ""
			args[0].each {|key, value| blurb = "<#{tag} #{key}='#{value}'/>"}
			if(@indent)
				blurb + "\n"
			else
				blurb
			end
		else
			"<#{tag}/>"
		end
	end
end