#def translate(text)
#
#	def consonant(text)
#		while text.start_with?('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z') do
#		text.slice!(0) << text[0] end
#	end
#consonant(text)
#
#	def vowel(text)
#    	if text.start_with?('a','e','i','o','u','y')        
#     		text << "ay" 
#    	else text end
#	end
#vowel(text)
#end

def trans_word(phrase)
	if phrase =~ /^[aeiou]/
		phrase + "ay"
	elsif phrase =~/^[^aeiou]*qu/
		phrase.delete(phrase.slice(/^[^aeiou]*qu/)).to_s + phrase.slice(/^[^aeiou]*qu/).to_s + "ay"
	else
		phrase.slice(/[aeiou].*$/) + phrase.slice(/^[^aeiou]{1,}/) + "ay"
	end
end

def translate(phrase)
	if phrase.split.length > 1
		phrase.split.map{|x| trans_word(x)}.join(" ")
	else trans_word(phrase)
	end
end
