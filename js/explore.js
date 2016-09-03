/*
 1. define function
 2. set paramaters to accept string
 3. create empty string variable to store reversed string characters
 4. loop through input string in reverse adding characters to output string
 5. return output string. 
 */

function reverseString(str) { 
 var out = "";
 
 for(var i = str.length-1; i>=0; i-- ){
   out += str[i]
 }
 if (1 == 1) { 
 	return out;
 }
}

console.log(reverseString("hello"))