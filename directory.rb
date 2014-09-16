@students = [] # an empty array accessible to all methods

# create a method that prints the header
def print_header
	puts "The students in my cohort (September 2014) at Makers Academy"
	puts "----------"
end

# create a method that prints the list of students
def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# create a method that prints the total number of students
def print_footer
	puts "Overall, we have #{@students.length} potential students."
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# get the first name
	name = STDIN.gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		add_student(name, :september)
		puts "Now we have #{@students.length} students."
		# get another name from the user
		name = STDIN.gets.chomp
	end
end

# 1. print the menu and ask the user what to do
def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end

# 2. show the students 
def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	# open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def add_student(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

def try_load_students
	filename = ARGV.first # first argument from the command line
	return if filename.nil? # get out of the method if it isn't given
	if File.exists?(filename) # if it exists
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else # if it doesn't exist 
		puts "Sorry, #{filename} doesn't exist."
		exit # quit the program
	end
end

# 3. do what the user has asked
def process(selection)
	case selection
	  when "1"
	  	input_students
	  when "2"
	  	show_students
	  when "3"
	  	save_students
	  when "4"
	  	load_students
	  when "9"
	  	exit
	  else
	  	puts "I don't know what you mean, try again"
	end
end

# create an interactive menu that gives the user options
def interactive_menu
  loop do
	print_menu
	process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu