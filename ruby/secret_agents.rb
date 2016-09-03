def encrypt(password)
	word = 0
	while word < password.length
		
		if  password[word] == " "
		p password[word] = " "
		elsif password[word] != " "
		p password[word] = password[word].next
		end
		word += 1
	end
	return password
end


def decrypt(password)
	word = 0 
	letters ="abcdefghijklmopqrstuvwxyz"
	decrypt = ""
	
	
	while word < password.length
	letter = password[word]
	  letter_index = letters.index(letter)
	  decrypt+=letters[letter_index-1]
	  word +=1
    end 
	
	
	return decrypt
end


# Driver Code
decrypt(encrypt("swordfish"))
 #   this nested method call works because it is reusing our already defined methods for encrypt and decrypt. This implementation calls decrypt and runs it with an input of an encrypt method call with a password of swordfish.
 
p "Would you like to encrypt or decrypt a password? "
choice = gets.chomp

p "Enter password: "
password = gets.chomp

if choice == "encrypt"
	p "The encryption code for the inputed word is: " + encrypt(password)
elsif choice == "decrypt"
	p "The decryption code for the inputed word is: " + decrypt(password)
else
	p "Can you repeat what you word you would want to be decrypted or encrypted."
	
end
