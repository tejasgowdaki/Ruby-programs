def rot(string)
	string = string.split("")
	cip_string = []
	string.each do |str|
		if str =~ /[[:alpha:]]/
			if /[[:upper:]]/.match(str)
				# upcase letters
				alphabet = ('A'..'Z').to_a
				str_index = alphabet.index(str) + 1
				cip_index = str_index + 13
				if cip_index > alphabet.size
					cip_index = cip_index - alphabet.size
					cip_string.push(alphabet[cip_index - 1])
				else
					cip_string.push(alphabet[cip_index - 1])
				end					
			else
				# downcase letters
				alphabet = ('a'..'z').to_a
				str_index = alphabet.index(str) + 1
				cip_index = str_index + 13
				if cip_index > alphabet.size
					cip_index = cip_index - alphabet.size
					cip_string.push(alphabet[cip_index - 1])
				else
					cip_string.push(alphabet[cip_index - 1])
				end
			end
		end
	end
	return cip_string.join("")
end


string = "grfg!"
ciphered_string = rot(string)
puts ciphered_string