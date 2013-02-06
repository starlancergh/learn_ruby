class Dictionary
	def initialize
		@entries = {}
		
	end
	
	def entries
		@entries
	end
	
	def add(somestuff)
		if (somestuff.class == Hash)
			@entries.merge!(somestuff)
		end
		if (somestuff.class == String)
			@entries.merge!(somestuff => nil)
		end
	end
	
	def keywords
		keys = []
		@entries.each_key {|key| keys << key}
		keys.sort
	end
	
	def include?(search)
		@entries.has_key?(search)
	end
	
	def find(search)
		@entries.select {|k,v| k.start_with?(search)}
		
	end
	
	def printable
		@entries = Hash[@entries.sort]
		output = ""
		@entries.each {|k,v| output << "[#{k}] \"#{v}\"\n"}
		output[0, output.length-1]
	end
end