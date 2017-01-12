def anagrams(primary_word,compare_array)
	primary_word = primary_word.split("").sort	
	ana_words = []
	compare_array.each do |word|
		if primary_word == word.split("").sort
			ana_words.push(word)
		end
	end
	return ana_words
end

anagram_array = anagrams('abba', ['abba', 'abcd', 'bbaa', 'dada'])
puts "Anagram array - #{anagram_array.to_s}"