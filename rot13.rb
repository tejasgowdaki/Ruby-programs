def rot(string)
  string = string.split('')
  cip_string = []
  string.each do |str|
    next unless str =~ /[[:alpha:]]/
    /[[:upper:]]/.match(str) ? alphabet = ('A'..'Z').to_a : alphabet = ('a'..'z').to_a
    str_index = alphabet.index(str) + 1
    cip_index = str_index + 13
    cip_index -= alphabet.size if cip_index > alphabet.size
    cip_string.push(alphabet[cip_index - 1])
  end
  cip_string.join('')
end

string = 'grfg!'
ciphered_string = rot(string)
puts ciphered_string
