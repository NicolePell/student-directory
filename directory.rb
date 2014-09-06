# create a method that prints the header
def print_header
	puts "The students in my cohort (September 2014) at Makers Academy"
	puts "----------"
end

# create a method that prints the list of students
def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# create a method that prints the total number of students
def print_footer(names)
	puts "Overall, we have #{names.length} potential students."
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :september}
		puts "Now we have #{students.length} students."
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

# call the methods
students = input_students
print_header
print(students)
print_footer(students)