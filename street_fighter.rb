class StreetFighter

	FIGHTERS = [
			    	["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
			    	["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
				]

	@@x = 0
	@@y = 0
	
	def self.move_position(move)
		case move
		when "right"
			(@@y == 5)? @@y = 0 : @@y += 1
		when "left"
			(@@y == 0)? @@y = 5 : @@y -= 1
		when "up"				
			@@x = 0
		when "down"
			@@x = 1
		else 
			return "Invalid entry"
		end
		return FIGHTERS[@@x][@@y]
	end
	
	
end

puts "Enter the move"
puts "Enter up/down/right/left\nEnter exit to exit program"

move = gets.chomp

while move != "exit"

	current_player = StreetFighter.move_position(move)
	puts "Player - #{current_player}"

	puts "Enter the move"
	move = gets.chomp
end