# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # create empty hash to store the list in
  # Message to user to prompt input
  # store the input as a variable
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list()
	puts "What do you want to call your list?"
	list = gets.chomp
	list = {}

	puts "Would you like to add item to list? yes or no"
	add = gets.chomp
	until add == "no"
		add_item(list)
		puts "Would you like to add another item? yes or no"
		add = gets.chomp
	end

	print_list(list)

	puts "Would you like to remove item from list?"
	remove = gets.chomp
	until remove == "no"
		remove_item(list)
		puts "Would you like to remove another item? yes or no"
		remove = gets.chomp
	end

	print_list(list)

	puts "Would you like to update the qty of any items? yes or no"
	update = gets.chomp
	until update == "no"
		update_qty(list)
		puts "Would you like update qty on another item? yes or no"
		update = gets.chomp
	end

	print_list(list)
end


# Method to add an item to a list
# message to user to prompt for item they want to add
# store user input in a variable 
# message to user to prompt for item quantity
# store user input in a variable (as an integer)
# input: item name and optional quantity
# steps:
	# access the hash using the item as the key and set the value as the quantity
# output:
	# return our new hash

def add_item(hash)
	puts "Add an item to your list"
	item = gets.chomp
	puts "How many of #{item}?"
	qty = gets.chomp.to_i
	hash[item] = qty
end

# Method to remove an item from the list
# input: 
	# prompt user for item they want to removed
	# store as variable
# steps:
	# access the hash
	# use item as key
# output:
	# return updated hash 

def remove_item(hash)
	puts "Which item would you like to remove?"
	item = gets.chomp
	hash.delete(item)
end

# Method to update the quantity of an item
# input:
	# prompt user for item
	# store as variable
	# prompt user for the new quantity of item
	# store as variable (integer)
# steps:
	# access hash item, quatity as key, value pair
# output:
	# return updated hash

def update_qty(hash)
	puts "which item would you like to update the qty for?"
	item = gets.chomp
	puts "Enter the new qty for #{item}"
	qty = gets.chomp.to_i
	hash[item] = qty
end

# Method to print a list and make it look pretty
# input:
	# the hash 
# steps:
	# iterate through hash
# output:
	# Print a readable statement about items and their quantities

def print_list(hash)
	hash.each {|i,q| puts "#{i}: #{q}"}
end

create_list
