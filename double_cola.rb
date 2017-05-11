def double_cola(num)
  names = %w(Sheldon Leonard Penny Rajesh Howard)
  return names[num - 1] if num <= names.size
  number = num - names.size
  index = 0
  number.times do
    names.push(names[index])
    names.push(names[index])
    index += 1
  end
  names[num - 1]
end

puts 'Enter the queue number'
queue_no = gets.to_i

puts "\nName - #{double_cola(queue_no)}"
