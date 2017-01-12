=begin
Create a class to specify data on students given below:

Roll number, name, department, course, year of joining, assume that there are not more than 100 students in the college

Write a method to print names of all students who joined in a particular year
Write a method to print the data of a student whose roll number is given
=end

require 'faker'

class Student

	attr_accessor :roll_number, :name, :department, :course, :year_of_joining

	@@students = []

	def initialize(roll_number, name, department, course, year_of_joining)
		@roll_number = roll_number
		@name = name
		@department = department
		@course = course
		@year_of_joining = year_of_joining
	end

	def add_to_list
		@@students.push(self)
	end

	def self.find_details_by_year(year)
		@@students.find_all {|student| student.year_of_joining == year}
	end

	def self.find_student_by_roll_number(number)
		@@students.find {|student| student.roll_number == number}
	end

	def details
		"#{self.name} - #{self.roll_number} - #{self.department} - #{self.course} - #{self.year_of_joining}"
	end

end

100.times do 
	roll_number = Faker::Number.between(1000,1200)
	name = Faker::Name.first_name
	department = ["CSE", "ISE", "ECE", "EEE"].sample
	course = ["BE", "BSC", "BCA"].sample
	year_of_joining = Faker::Number.between(2010,2016)
	student = Student.new(roll_number, name, department, course, year_of_joining)
	student.add_to_list
end

puts "Enter the year to get Student details"
year = gets.to_i
student_details = Student.find_details_by_year(year)
student_details.each do |student|
	puts student.details
end

puts "Enter the roll number to find the student"
roll_number = gets.to_i
student_detail = Student.find_student_by_roll_number(roll_number)
puts student_detail.details


