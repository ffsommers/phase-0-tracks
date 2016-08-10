


def release_1
places = ["France", "Egypt", "Spain", "NYC"]
travel_form = {
	"name" => "John",
	"destination" => "Egypt",
	"method_of_travel" => "Plane",
	"duration" => "two weeks",
	"time" => "10:00 AM"
}
 puts "BEFORE: " 
 puts places
  places.each do |item|
      puts "AFTER :" 
      puts item.upcase

  end	
  puts "BEFORE: "  
  puts places
  places.map do |item|
	puts "Location:  "+"#{item}"
  end
  
  puts "BEFORE: " 
  puts travel_form
   travel_form.each do |key, value|
      puts key.reverse
      puts value.upcase

   end

end

release_1()

#releas 2

def method_1 
array = [1,2,3,4,5,6,7,8,9,10]
 array.map do |number|
 	if (number % 2 == 0)
 		puts "#{number} IS EVEN! "
 	else 
 	    puts number
 	end    	
 end
		
    
   


end	

def method_2
 hash = {
 	"toppings" => 5,
 	"people" => 8,
 	"guests" => 9,
 	"users" =>20,
 	"clients" => 2
 }
 new_hash = { }	
 
 hash.each do |key, value|
   if value < 10
   	new_hash.merge!(key => value) 

   end
 end  	
  puts new_hash
end	

def method_3 
 hash = {
 	"basketball" => "Jane",
 	"baseball" => "Joe",
 	"football" => "John",
 	"lacrosse" => "Lawrence"
 }
 new_hash={}
  puts "enter a name"
  input= gets.chomp
  
 hash.each do |key, value|
  if  input == value 
  	new_hash.merge!(key => value)
  end	
 end
 puts new_hash	
end	



def method_4 
hash= {
	"a" => 1,
	"b" => 2,
	"c" => 3,
	"d" => 4,
	"e" => 5,
	"f" => 6,
	"g" => 7
}
hash.delete_if {|key, value| key >= "d" }
puts hash

end

