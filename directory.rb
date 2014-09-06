# put the list of potential students into an array
students = [
	"vic329", 
	"Bernard", 
	"Elena Garrone", 
	"Yvette Cook", 
	"Stephen Giles", 
	"Ana Isabel Nogal", 
	"craigh44", 
	"Tim Scully", 
	"Ella Schofield", 
	"Fadie H", 
	"Colin Schmid aka mala23",
	"zrasool88",
	"galicians",
	"danjocutler",
	"Camilla van Klinken",
	"Sandrine",
	"jamesascarter",
	"sistevens",
	"Schlap",
	"andrewhercules",
	"Karin Nielsen",
	"Andrew Snead",
	"Rachel Nolan",
	"galalag",
	"annaschechter",
	"alexfakhri",
	"Denise Yu",
	"Nicole Pellicena Tredway (ME)"
]
# create a method that prints the header
def print_header
	puts "The students of my cohort (September 2014) at Makers Academy"
	puts "----------"
end
# create a method that prints the list of students
def print(names)
	names.each do |name|
		puts name
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