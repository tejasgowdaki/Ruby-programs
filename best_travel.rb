#
# John and Mary want to travel between a few towns A, B, C ... Mary has on a sheet of paper a list of distances between these towns. ls = [50, 55, 57, 58, 60]. John is tired of driving and he says to Mary that he doesn't want to drive more than t = 174 miles and he will visit only 3 towns.
#
# Which distances, hence which towns, they will choose so that the sum of the distances is the biggest possible - to please Mary - but less than t - to please John- ?
#
# Example:
#
# With list ls and 3 towns to visit they can make a choice between: [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].
#
# The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.
#
# The biggest possible sum taking a limit of 174 into account is then 173 and the distances of the 3 corresponding towns is [55, 58, 60].
#
# The function chooseBestSum (or choose_best_sum or ... depending on the language) will take as parameters t (maximum sum of distances, integer >= 0), k (number of towns to visit, k >= 1) and ls (list of distances, all distances are positive or null integers and this list has at least one element). The function returns the "best" sum ie the biggest possible sum of k distances less than or equal to the given limit t, if that sum exists, or otherwise nil, null, None, Nothing, depending on the language. With C++ return -1.
#
# Examples:
#
# ts = [50, 55, 56, 57, 58] choose_best_sum(163, 3, ts) -> 163
#
# xs = [50] choose_best_sum(163, 3, xs) -> nil (or null or ... or -1 (C++)
#
# ys = [91, 74, 73, 85, 73, 81, 87] choose_best_sum(230, 3, ys) -> 228

def choose_best_sum(max_distance, _max_cities, list_of_distances)
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
        if (dist <= max_distance) && dist > best_dist
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
  puts "Cities - #{cities_travelled}"
end
max_distance = 174
max_cities =
  list_of_distances = [50, 55, 57, 58, 60]
choose_best_sum(max_distance, max_cities, list_of_distances)
