# RELEASE 0
=begin
  1. create class of Marine 
  2. class attributes 
  	initialize 
  		a. name 
  		b. D.O.B
  		c. height 
  		d. weight 
  		e. Fitness Test Score
  			- Situps (scale)
  			- pullups (scale)
  			- 3 mile run (scale) 
  		   
  		f. Occupational Specialty 
  			-populate taking random indx from array of specialties	
  3. Methods 
     a. calculate age from DOB 
     b. check if marine is within height and weight standards 
        - algorithm 
        	- if marine is between 5"6 and 6" and over 180 lbs print "Eat less Marine!"
            - if marine is between 5" & 5"5  and over 170 lbs print "Eat less Marine"    
     e. PFT checker 
        -    Marine's PFT score  is less than 270 print "RUN MORE MARINE!"
     d. March
       - print "left! right! left! right! left! right!"    
  4. UX 
  	
=end

#REALEASE 1
  class Marine
     attr_reader :name, :yob, :weight, :height, :pft, :mos 
    def initialize (name, yob, weight, height, pft, mos) 
    	@name = name 
    	@yob = yob
    	@weight = weight 
    	@height = height 
    	@pft = pft
    	@mos = mos    
      
    end
    
    def age 
      age = 2016 - @yob 
    end

    def weight_check
       if (@height >= 66 && @height <= 72) && @weight> 180 
          "Eat less Marine!"

       elsif (@height >= 60 && @height <= 65) && @weight> 170 
          "Eat less Marine!"
       else 
         "Carry on Marine!"
       end 

    end

    def pft_score
      if @pft <= 270 
       "Run more Marine!"
      end
    end 
    
    def march 
       "LEFT! RIGHT! LEFT! RIGHT! LEFT! RIGHT!"
    end 
     	
  end  

# driver code test 
#lawrence = Marine.new("lawrence", 1989,200, 69, 210, "aviator" )
#lawrence.weight_check
#lawrence.pft_score
#lawrence.march
#lawrence.age
#RELEASE 2
# 1. user should be able to create as many instances as they want
# 2. prompt user to enter attributes 
# 3. store instances in array 
# 4. when user types "done" exit and print array 

def build_marines
  
  puts "Would you like to build a new Marine?"
  build_check = gets.chomp
  marines = []
  until build_check == "no"
    marine_builder(marines)
    puts "Would you like to build a new Marine?"
    build_check = gets.chomp 
  end
   marines.each do |i|
      puts "***********"    
      puts  "MARINE: #{i.name}"
      puts  "AGE : #{i.age}"
      puts  "MOS: #{i.mos}"
      puts  "LATEST PFT: #{i.pft}"
      puts  "HEIGHT: #{i.height}"
      puts  "WEIGHT: #{i.weight}"
      puts  "FITNESS REQUIREMENTS: #{i.weight_check} #{i.pft_score}"
      puts "NEXT! *#{i.march}*"
      puts "***********"
      puts
   end
end       

def marine_builder(array)
   
    puts "Enter a name for your Marine."
    name = gets.chomp
    puts "enter your Marine's year of birth."
    yob = gets.chomp.to_i
    puts "enter your Marines weight in lbs."
    weight = gets.chomp.to_i
    puts "enter your Marines height in inches."
    height = gets.chomp.to_i
    puts "enter your Marine's lateset fitness test score (1-300)"
    pft = gets.chomp.to_i
    puts "enter your Marines Military Occupational Specialty."
    mos = gets.chomp
    array << Marine.new(name, yob, weight, height,pft, mos)

end  

build_marines