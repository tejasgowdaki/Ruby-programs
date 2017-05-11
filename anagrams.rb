def anagrams(primary_word, compare_array)
  primary_word = primary_word.split('').sort
  ana_words = []
  compare_array.each do |word|
    ana_words.push(word) if primary_word == word.split('').sort
  end
  ana_words
end

anagram_array = anagrams('abba', %w(abba abcd bbaa dada))
puts "Anagram array - #{anagram_array}"
