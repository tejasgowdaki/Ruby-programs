def choose_best_sum(max_distance, max_cities, list_of_distances )
	
	ls = list_of_distances

	best_dist = 0
	cities_travelled = [0, 0, 0]	

	x = 0

	(ls.size - 2).times do
		y = x + 1
		while y < ls.size - 1
			z = y + 1
			while z < ls.size
				dist = ls[x] + ls[y] + ls[z]
				if dist <= max_distance and dist > best_dist
					best_dist = dist
					cities_travelled[0] = ls[x]
					cities_travelled[1] = ls[y]
					cities_travelled[2] = ls[z]
				end
				z += 1
			end
			y += 1
		end
		x += 1
	end

	puts "Best distance travelled - #{best_dist}"
	puts "Cities - #{cities_travelled.to_s}"

end
max_distance = 230
max_cities = 4
list_of_distances = [50, 55, 57, 58, 60, 78]
choose_best_sum(max_distance, max_cities, list_of_distances)
