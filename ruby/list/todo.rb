class TodoList
  
   def initialize(input)
     @input = input 
   end 
   
   def get_items
     @input
   end
   
   def add_item(item)
   	@input <<item
   end
   
   def delete_item(item)
   	@input.delete(item)
   end

   def get_item(indx)
    @input[indx]
   end

end	

