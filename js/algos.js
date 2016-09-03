 var _ = require('underscore');
// RELEASE 0 - LONGEST PHRASE 
     function longestPhrase(array){
       //this block loops through array storing length of array items in empty array(arrayLength)
       var lengthArray = [];	
     	  for (var i=0; i<array.length; i++){
            lengthArray.push(array[i].length);
     	  }
     	// this function finds the index of the max value in the array
       function indexOfMax(arr) {
         if (arr.length === 0) {
           return -1;
         }

         var max = arr[0];
         var maxIndex = 0;

         for (var i = 1; i < arr.length; i++) {
           if (arr[i] > max) {
             maxIndex = i;
             max = arr[i];
           }
         }

       return maxIndex;
       }
     //store the max length INDEX in a new variable  
     var outIndex = indexOfMax(lengthArray);
     // access longest phrase in array 
     console.log(array[outIndex])

    }

  
// RELEASE 1 - KEY VALUE MATCH
//USING UNDERSCORE LIBRARY!
function keyValMatch (obj1, obj2) {	
  return _.every(_.keys(obj1), function(currentKey) {
    return _.has(obj2, currentKey); 
   });
}
// RELEASE 2 - GENERATE RANDOM RTEST DATA

function testData(words){
  var arrOut = [];
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var length = function getRandomInt(min, max) {
                min = Math.ceil(1);
                max = Math.floor(10);
                return Math.floor(Math.random() * (max - min)) + min;
               }
   for (var i = 0; i<words; i++){
      arrOut.push(letters.substr(length(),length()));
   }            
  
 return arrOut;
}


//!!!!!!!!!!!!!!!!!!!!!DRIVER CODE!!!!!!!!!!!!!!!!!!!!!

//longest phrase driver code
longestPhrase(["long phrase","longest phrase","longer phrase"])
longestPhrase(["a", "ABCDEFG", "bb", "HIJKLMNOPQRSTUVWX", "yz"])

console.log("******\n")

//keyValMatch driver code
 //passing case
  var obj1 = {name: "Steven", age: 54};
  var obj2 = {name: "Steven", age: 54};
  console.log(keyValMatch(obj1, obj2));
 //failing case
  var obj3 = {surname: "john", dob:54};
  var obj4 = {name: "john", dob:54};
  console.log(keyValMatch(obj3, obj4)); 
  console.log("******\n")
// testData driver code
  console.log("**testData standalone test**")
  console.log(testData(4));
  console.log("**testData plugged into longest phrase **")
  longestPhrase(testData(5));
