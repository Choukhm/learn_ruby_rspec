def who_is_bigger(a, b, c)
	tab = {"a" => a, "b" => b,"c" => c}
	if tab.value?(nil)
		reponse = "nil detected"
	else tab = tab.sort_by{|k, v| -v}.to_h
		reponse = "#{tab.keys[0]} is bigger"
	end
reponse
end


def reverse_upcase_noLTA(phrase)
	return phrase.reverse.upcase.delete "L" "T" "A"
end


def array_42(tab)
	return tab.include?(42)
end


def magic_array(tab)
	tab.flatten.reverse.map{|x| x*2}.keep_if{|x| x % 3 != 0}.uniq.sort
end