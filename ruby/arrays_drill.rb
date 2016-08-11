#release 2 
def build_array (item1, item2, item3)
  array = []
  
  array << item1 
  array << item2
  array << item3

  p array

end

def add_to_array (array,item)
 array << item

 p array
end	
add_to_array([1,2,3,4],false)
=begin
# release 0
array = []
array += ["item1","item2","item3","item4","item5"]
p array  
array.delete_at(2)
p "ARRAY AFTER DELETE INDEX 2"
p array
array.insert(2,"INSERTED ITEM")
p array
array.shift
p array

print "Check if array includes the string, 'INSERTED ITEM' : " 
p array.include?("INSERTED ITEM")

array2 = ["Hello USERS!", 1, false]

combined_arrays = array + array2
p combined_arrays
=end 
