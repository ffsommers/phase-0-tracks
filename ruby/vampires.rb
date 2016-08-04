def vampire_check 
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born in?"
  bday= gets.chomp 
  puts "Our cafeteria serves garlic bread. Would you like some?"
  bread_user = gets.chomp
  
  age_check =  if age.to_i == (2016 - (bday.to_i))
                 age_check =true
               else 
                 age_check = false
               end
  bread =  if bread_user == "yes"
           bread = false
           else bread = true
           end  
  health = puts "Would you like to enroll in the company’s health insurance?"
           health_user = gets.chomp
           if health_user == "yes"
            health = false
           else 
            health = true
          end

 
  if  age_check && bread && !health  
        puts "Probably not a vampire."
   
  end
  if !age_check && bread && health  
        puts "Probably a vampire."
  
  end      
  if !age_check && !bread && health
        puts "Almost certainly a vampire."     
  end
  if age_check && bread && !health && name == "Drake Cula" || name == "Tu Fang"
        puts "Definitely a vampire."

  else
    puts "Results inconclusive."      
    
  end


 

end

puts vampire_check