# put the list of potential students into an array
students = [
	{:name => "vic329", :cohort => :september},
	{:name => "Bernard", :cohort => :september},
	{:name => "Elena Garrone", :cohort => :september},
	{:name => "Yvette Cook", :cohort => :september},
	{:name => "Stephen Giles", :cohort => :september},
	{:name => "Ana Isabel Nogal", :cohort => :september},
	{:name => "craigh44", :cohort => :september},
	{:name => "Tim Scully", :cohort => :september},
	{:name => "Ella Schofield", :cohort => :september},
	{:name => "Fadie H", :cohort => :september},
	{:name => "Colin Schmid aka mala23", :cohort => :september},
	{:name => "zrasool88", :cohort => :september},
	{:name => "galicians", :cohort => :september},
	{:name => "danjocutler", :cohort => :september},
	{:name => "Camilla van Klinken", :cohort => :september},
	{:name => "Sandrine", :cohort => :september},
	{:name => "jamesascarter", :cohort => :september},
	{:name => "sistevens", :cohort => :september},
	{:name => "Schlap", :cohort => :september},
	{:name => "andrewhercules", :cohort => :september},
	{:name => "Karin Nielsen", :cohort => :september},
	{:name => "Andrew Snead", :cohort => :september},
	{:name => "Rachel Nolan", :cohort => :september},
	{:name => "galalag", :cohort => :september},
	{:name => "annaschechter", :cohort => :september},
	{:name => "alexfakhri", :cohort => :september},
	{:name => "Denise Yu", :cohort => :september},
	{:name => "Nicole Pellicena Tredway (ME)", :cohort => :september}
]
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
# call the methods
print_header
print(students)
print_footer(students)