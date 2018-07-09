def translate(text)

	def consonant(text)
		while text.start_with?('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z') do
		text.slice!(0) << text[0] end
	end
consonant(text)


	def vowel(text)
    	if text.start_with?('a','e','i','o','u','y')        
     		text << "ay" 
    	else text end
	end
vowel(text)
end