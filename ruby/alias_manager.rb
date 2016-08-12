# RELEASE 0
# write method for creating a spy name
# 
# 1. swap thefirst and last name 
# 2.change all vowels to next vowel aieou 
# 3. increment all consonants by one letter 




def alias_creator (str)
# downcase all characters incase the name had initial caps.
str = str.downcase	
# split name into first and last name 
str = str.split (" ")
# switch the first and last name 
first_name = str[1]
last_name = str[0]
# create vowel string for cross checking each character
vowels = "aeiou"
# create consonant string for cross checking each character
consonants = "bcdfghjklmnpqrstvwxz"
# create empty strings that encoded first and last names will be stored in.
first_name_alias = ""
last_name_alias = "" 

=begin encoding names 
  1.taking the first name string and iterate through each character 
  2. check if vowels string includes current character in first name string
  3. if it does access the letter in vowels string by its index, increment that index by one
     add that new letter to the alias string. 
  4. if the current character is a consonant it will go through the same process but using the consonants string
  5. repeat process for last name. 
=end
 first_name.each_char do |char|  
 	if vowels.include?(char)
 		first_name_alias += vowels[vowels.index(char)+1]
         
    elsif consonants.include?(char)
    	first_name_alias += consonants[consonants.index(char)+1]

      end        
 	
  end
  
  last_name.each_char do |char|  
 	if vowels.include?(char)
 		last_name_alias += vowels[vowels.index(char)+1]
         
    elsif consonants.include?(char)
    	last_name_alias += consonants[consonants.index(char)+1]

      end        
 	
  end
# combine encoded first and last names 
 spy_alias = first_name_alias + " " + last_name_alias
 p spy_alias


end

puts "Hello user! Please enter the name you would like to encode. If you are done type 'quit'."
name = gets.chomp

until name == "quit"
   alias_creator(name)
   puts "Hello user! Please enter the name you would like to encode. If you are done type 'quit'."
name = gets.chomp
end
# release 1



