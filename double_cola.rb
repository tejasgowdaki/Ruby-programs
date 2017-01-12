def double_cola(num)
	names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
	if num <= names.size
		return names[num - 1]
	else
		number = num - names.size
		index = 0
		number.times do
			names.push(names[index])
			names.push(names[index])
			index += 1
		end
		return names[num - 1]
	end
end

puts "Enter the queue number"
queue_no = gets.to_i

puts "\nName - #{double_cola(queue_no)}"