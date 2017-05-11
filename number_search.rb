puts 'Enter 10 numbers'
n = 1
numbers = []
while n <= 10
  numbers.push(gets.to_i)
  n += 1
end
puts numbers.to_s
puts 'Enter the number to be searched'
search_number = gets.to_i
count = numbers.find_all { |num| num == search_number }.count
if count > 0
  puts "The array has the number \"#{search_number}\" #{count} times"
else
  puts "The array does not contain the number \"#{search_number}\" "
end
