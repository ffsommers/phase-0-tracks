def vampire_check 
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born in?"
  bday= gets.chomp 
  age_check = 2016 - (bday.to_i)
  if age.to_i == (2016 - (bday.to_i))
   puts "Our cafeteria serves garlic bread. Would you like some?"
   bread = gets.chomp
     if bread == "no"
       puts "Would you like to enroll in the company’s health insurance?"
       health = gets.chomp
         if health == "yes"
           puts "great see you at work tommorow Mr. not a vampire"
         else 
           puts "AHA YOURE A VAMPIRE!"	
         end  
     else 
       puts "AHA YOURE A VAMPIRE!"
     end   
  else
   puts "AHA YOURE A VAMPIRE!"
  end  


 

end

puts vampire_check