=begin
module Shout 
	def self.yell_angrily(words)
	  words + "!!!" + " :("
	end

	def self.yell_happily(words)
      words.downcase + "*whispering*"
	end	
end 
#driver code 
p Shout.yell_angrily("THIS IS A TEST OF OUR MODULES")
p Shout.yell_happily("THIS IS A TEST OF OUR MODULES")
=end 

module Shout 
	def yell_angrily(words)
	  words + "!!!" + " :("
	end

	def yell_happily(words)
      words.downcase + "*whispering*"
	end	
  
end 

class PE
  include Shout 
end	

class Recess 
	include Shout
end	

#driver code 
 kindergarten = PE.new
 p kindergarten.yell_angrily("class be quiet")
 fourth_grade = Recess.new
 p fourth_grade.yell_happily("CLASS RECESS IS OVER")