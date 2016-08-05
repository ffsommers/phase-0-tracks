def vampire_check 
  puts "how many employees will be processed"
  count = gets.chomp.to_i
idx =0
  while idx < count
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born in?"
  bday= gets.chomp 
  puts "Our cafeteria serves garlic bread. Would you like some?"
  bread_user = gets.chomp
  puts "Would you like to enroll in the company’s health insurance?"
  health_user = gets.chomp
  
  age_check =  if age.to_i == (2016 - (bday.to_i))
                 age_check =true
               else 
                 age_check = false
               end
  
  bread =  if bread_user == "yes"
             bread = false #a vampire would say no to bread
           else 
             bread = true
           end  

  health = if health_user == "yes"
            health = false # a vampire wouldnt want health insurance
           else 
            health = true
          end

 
 not_vampire = if  age_check &&  !(bread || health)  
                not_vampire = true
               else 
                not_vampire = false
               end 
   
  
 prob_vampire = if !(age_check && bread) || !(age_check && health)  
                  prob_vampire = true 
                else
                  prob_vampire = false
                end    
  
        
  cert_vampire = if !age_check && bread && health
                 cert_vampire = true
               else
                 cert_vampire = false 
               end

  def_vampire = if name == "Drake Cula" || name == "Tu Fang"
                def_vampire = true
              else 
                def_vampire = false      
              end

     
     
  not_sure = if (not_vampire && prob_vampire && cert_vampire && def_vampire)
              not_sure = true
             else
              not_sure = false      
             end

    if def_vampire 
       puts "Definitely a vampire." 

     
    elsif cert_vampire 
       puts "Almost certainly a vampire."


    elsif  prob_vampire && !not_vampire
       puts "Probably a vampire."
    elsif  not_vampire
       puts "Probably not a vampire."
    else
       puts "results inconclusive"      
            
    end        
   idx +=1
 end

end

puts vampire_check