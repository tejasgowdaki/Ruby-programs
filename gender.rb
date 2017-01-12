# gem install httparty

require 'httparty'

puts "Enter the name"
first_name = gets.chomp
response = HTTParty.get("https://gender-api.com/get?name=#{first_name}")
# response is an httparty object
puts "The gender is : #{response.parsed_response["gender"]}"