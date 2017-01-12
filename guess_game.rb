puts "*** Welcome to the guess game ***"
puts "Enter your name"
player_name = gets.chomp # to eliminate \n
puts "\nWelcome " + player_name + " lets get started"
target_number = Random.rand(100)
player_guesses = 0
maximum_guesses = 5
first_number = 1
last_number = 100
while player_guesses < maximum_guesses
	puts "\nGuess the number between #{first_number} to #{last_number}"
	puts "You have #{maximum_guesses - player_guesses} chance left"
	guessed_number = gets.to_i
	if guessed_number < target_number
		puts "Oops. Your guess was low."
		first_number = guessed_number
	elsif guessed_number > target_number
		puts "Oops. Your guess was high"
		last_number = guessed_number
	else 
		puts "\nGood job " + player_name + " you guessed my number in #{player_guesses +1} guesses"
		break
	end
	player_guesses = player_guesses + 1
end
if player_guesses == maximum_guesses
	puts "\nSorry you din't get my number. The target number was #{target_number}"
end	