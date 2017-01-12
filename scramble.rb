def scramble(scr_word, com_word)
	scr_word = scr_word.split("")
	com_word = com_word.split("")
	com_word.each do |com_letter|
		if scr_word.include?(com_letter)
			scr_word.delete_at(scr_word.index(com_letter))
		else
			return false
		end
	end
	return true
end


puts "Enter scramble word"
scramble_word = gets.chomp

puts "Enter compare word"
compare_word = gets.chomp

puts "\nAnswer - #{scramble(scramble_word, compare_word)}"
