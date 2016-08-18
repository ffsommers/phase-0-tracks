class Santa
  
  def speak
  	puts "Ho, ho, go! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
  	puts " That was a good #{type}!"
  end

  attr_accessor :reindeer, :name, :age, :ethnicity

  
  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance ..." 
    @gender = gender
    @ethnicity = ethnicity
    @age = age
  end 

  def reindeer_ranking (array)
    @reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] + array
     
  end
  
  def user_age (int)
   p @age = 0 + int  
  end	
  
  def ethnicity
   p @ethnicity
  end

  def celebrate_birthday
     @age = @age + 1 
  end
  
  def age
   p @age 
  end
  
  def get_mad_at(name) 
    last = @reindeer.length-1
    indx = @reindeer.index(name)

    p @reindeer.insert(last,@reindeer.delete_at(indx)) 
    
  end

  def new_gender(new_gender)
    p @gender = new_gender
  end  

end






#randomization methods
  def rand_age
    age_array = (0..140).to_a
    age_array.sample
  end   
  
  def rand_gender
    genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "cat", "dog", "helicopter"]
    genders.sample
  end  
  
  def rand_ethn
    ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    ethnicities.sample
  end  

100.times do |i|
  
  p Santa.new(rand_gender, rand_ethn, rand_age)
end	 

