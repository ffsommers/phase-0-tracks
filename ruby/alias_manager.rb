# RELEASE 0
# write method for creating a spy name
# 
# 1. swap thefirst and last name 
# 2.change all vowels to next vowel aieou 
# 3. increment all consonants by one letter 




def alias_creator (str)
# downcase all characters incase the name had initial caps.
str = str.downcase	

# create vowel string for cross checking each character (I ADDED 3 REPEATING VOWEL SEGMENTS TO PREVENT EDGE CASE FROM BREAKING WHEN ENCODING A VOEWEL AT THE END OF THE STRING LIKE U in "AEIOU") 
vowels = "aeiouaeiouaeiou"
# create consonant string for cross checking each character
consonants = "bcdfghjklmnpqrstvwxz"
# create empty strings that encoded first and last names will be stored in.
name_alias = ""
# create empty string to create an encoded full name 
spy_alias = ""
=begin encoding names 
  1.taking the first name string and iterate through each character 
  2. check if vowels string includes current character in first name string
  3. if it does access the letter in vowels string by its index, increment that index by one
     add that new letter to the alias string. 
  4. if the current character is a consonant it will go through the same process but using the consonants string
  5. if the current character is a space a space will be added to the encoded string. 
=end
  
 str.each_char do |char|  
 	if char == " "
      name_alias+= " "

 	elsif vowels.include?(char)
 		name_alias += vowels[vowels.index(char).next]
         
    elsif consonants.include?(char)
    	name_alias += consonants[consonants.index(char).next]

      

    end         
 	
  end
  # check if the string that was encoded was a full name or just a first or last name
  # if it is a full name. sperate the first and last name and reverse the order (Lastname Firstname)
  
  if name_alias.include?(" ")
  swap_name = name_alias.split(" ")
   spy_alias = swap_name[1] + " " +swap_name[0]
  else spy_alias = name_alias
  end 
   
  
 return spy_alias


end

# release 1

def run_alias
  aliases = Hash.new(0)
  name = input()
  until name == "quit"
  aliases[name] = alias_creator(name)
  name = input()
  end
   
  print_aliases(aliases)

end

def input
message = "Hello user! Please enter the name you would like to encode. If you are done type 'quit'."

puts message
name = gets.chomp
  return name
end	

def print_aliases(hash)
	hash.each do |key, value|
		puts key + " is also known as " + value
	end	
 
end 	

run_alias()

