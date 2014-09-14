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

# create an interactive menu that gives the user options
def interactive_menu
  students = []
  loop do
	# 1. print the menu and ask the user what to do
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
	# 2. read the input and save it into a variable
	selection = gets.chomp
	# 3. do what the user has asked
	case selection
	  when "1"
	  	students = input_students
	  when "2"
	  	print_header
	  	print(students)
	  	print_footer(students)
	  when "9"
	  	exit
	  else
	  	puts "I don't know what you meant, try again"
	  end
  end
end

interactive_menu