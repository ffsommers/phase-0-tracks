class Puppy

  def initialize
  	 puts "Initializing new puppy instace ..."
  	
  end
    
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def roll_over
  	puts "*rolls over*"
  	
  end
  
  def dog_years(human_years)
  	age = human_years * 7
  	age
  end	
  def stay
     puts "*sits and looks adorable*"
  end 	
  
  
end
 
 

class Marine
  attr_accessor :name

  def initialize (name)
    @name = name   
  end 
  
  def train 
     p "Good job Marine! Here's your Eagle Globe and Anchor."
  end
  
  def arm
  	 weapons =["M16", "M203", "SAW", "M240B"]
  	 p weapons.sample
  end	
 end
 
 marines_array = [
     "Andrew", "Buzz", "Newton", "David", "Rodriguez", 
     "Victor", "Mike", "Clancy", "Ortiz", "Ortega",
     "Jackson", "Nixon", "Mary", "Jane", "Lara",
     "Christina", "Nancy", "Jones", "Murphy", "Archie",
     "William", "Harrison", "Barnes", "Stacy", "Kendall",
     "Bill", "Graham", "Harrison", "Geno", "Jones",
     "Meridith", "Helmer", "Richard", "Knapp", "Xander",
     "Willford", "Cliff", "Nash", "Alex", "Mitch",
     "Steve", "Cody", "Abraham", "Gordan", "Logan",
     "Will", "Branson", "Loyd", "Bubba", "Gus" 
    ]  
 

 platoon = {} 
 
 marines_array.each do |e|
 	 new_marine = Marine.new(e)

 	 platoon[e] = new_marine
 end 
 
 puts platoon


  platoon.each do |key,value|
 	 puts value.arm
   end

  platoon.each do |key,value|
    puts value.train
  end
 
 


  		
  



##### DRIVER CODE #####
=begin doge = Puppy.new
puts doge.fetch("ball")
puts doge.roll_over
puts doge.dog_years(7)
puts doge.stay
=end