# Interior Designer Client Details 
#
# 1. create client hash 
# 2. create keys USING SYMBLOLS for name, age, number of children, theme,
# 
# PROGRAM REQUIREMENTS
# 1. prompt user for all of his data
# 2. Convert user data to appropriate type 
# 3. Print the hash back out when user has answered all the questions 
# 4. give user option to update value by selecting key they want to change value for  or to opt out "none"
# 5. print latest version of hash 


def Interior_Design 
 # create hash 
  form = {
  	name: nil,
  	age: nil,
  	children: nil,
  	theme: nil
  } 
# prompt & store user data
puts "Please enter your name."
form[:name] = gets.chomp 
puts "Please enter your age."
form[:age] = gets.chomp 
puts "Please enter the number of children you have."
form[:children] = gets.chomp  
puts "Please enter the theme you would like."
form[:theme] = gets.chomp
# print form 
puts form 

# allow user to edit key value pairs 
puts "Would you like to change any of your entries? please enter name, age, children, or theme. if you dont want to change anything enter none. "
input = gets.chomp
# check which form field the user would like to edit
if input == "name"
	puts "Please enter a new name."
	form[:name] = gets.chomp
elsif input == "age"
	puts "Please enter a new age."
	form[:age] = gets.chomp
elsif input == "children"
	puts "please enter how many children you have."
	form[:children] = gets.chomp

elsif input == "theme"
    puts "please enter a different theme."
    form[:theme] = gets.chomp
# check if user does not wish to edit form
elsif input == "none"
# print updated form   
   puts form
   exit    

end    	
puts form
end
 puts Interior_Design()