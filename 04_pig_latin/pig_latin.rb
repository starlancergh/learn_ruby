def translateword(args)
	vowels = ['a', 'e', 'i', 'o', 'u']
	special = ['qu']
	if(vowels.include?(args[0]))	# first letter is vowel
		"#{args}ay"
	elsif(vowels.include?(args[1]) && (args[0,2] != "qu"))	# second letter is vowel, does not start with "qu"
		"#{args[1,args.length-1]}#{args[0]}ay"
	elsif((vowels.include?(args[2]) || (args[0,2] == "qu")) && (args[1,2] != "qu"))  # third letter is a vowel, word does not start with "?qu"
		"#{args[2,args.length-2]}#{args[0,2]}ay"
	else
		"#{args[3,args.length-3]}#{args[0,3]}ay"
	end
end

def translate(args)
	args = args.split(/ /)
	rt = ""
	args.each do |arg|
		arg = translateword(arg)
		rt = "#{rt} #{arg}"
	end
	rt[1, rt.length-1]
end
