def echo(text)
	text
end 


def shout(text)
	text.upcase 
end


def repeat(text,n=2)
	([text] * n).join ' '
end


def start_of_word(text,n)
	text [0,n]
end


def first_word(text)
	text.split.first
end


#def titleize(text)
#	def capitalize(text)
#		texte.split.map { |i| i.capitalize }.join(' ')
#	end
#end


def titleize(text)
  string = text.split()
  string.each { |word|
    if word == string[0]
      word.capitalize!
    elsif word == "and" || word == "the"
      word = word
    else word.capitalize! end}
texte = string.join(" ")
end