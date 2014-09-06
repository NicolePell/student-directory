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
# now print the list
puts "The students of my cohort (September 2014) at Makers Academy"
puts "----------"
students.each do |student|
	puts student
end
puts "----------"
# print the total number of potential students
puts "Overall, we have #{students.length} potential students."