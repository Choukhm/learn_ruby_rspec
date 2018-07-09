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

def trans_word(text)
	if text =~ /^[aeiou]/
		text + "ay"
	elsif text =~/^[^aeiou]*qu/
		text.delete(text.slice(/^[^aeiou]*qu/)).to_s + text.slice(/^[^aeiou]*qu/).to_s + "ay"
	else
		text.slice(/[aeiou].*$/) + text.slice(/^[^aeiou]{1,}/) + "ay"
	end
end

def translate(text)
	if text.split.length > 1
		text.split.map{|x| trans_word(x)}.join(" ")
	else trans_word(text)
	end
end
