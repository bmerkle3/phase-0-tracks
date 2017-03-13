
//release 0
// method to take in an array- containing strings. 
  // 1. input is an array
  // for each item in the array, determine length of the string
  // each item returns the length of the string,  before moving to the next item puts the string itself (as a key) and the integer of how long the string is (as value) into a key, value pair saved in an object

// take the object containing the phrase and phrase-length, and sort it so it is in order from smallest length to longest length.
 // Returns an array
 // print the last value in the array as the longest value
 // returns a string

 // method to run both methods together

var phraseLength = {}

function longestPhrase(phrase) {
    number = phrase.length;
    phraseLength[phrase] = number;
    phraseLength;
  } 

function sorts(phrasesAndLengths) {
sortedPhrase = Object.keys(phraseLength).sort(function(a,b){return phraseLength[a]-phraseLength[b]});
sortedPhrase.reverse();
console.log(sortedPhrase[0])
sortedPhrase[0]

}

function printLongest(anyStringArray) {
  anyStringArray.forEach(longestPhrase) ;
  sorts(phraseLength) ;
 }
/////////////////////////////////////////////////////////////////////////////////////
//release 1
// creates key arrays
// input is two objects
// change objects to 2 arrays of keys 
// save arrays in method

// creates value arrays
// input is two objects
 // 2 arrays of values
 // saves arrays in method
// 
// check key arrays with key arrays
// input is 2 arrays
// start with match as false
// for each key in objectA, check to see if it matches a key in objectB
  // if match is found, returns true (set to variable for match found = true)
  // if no match is found, returns false

// Check value arrays with value arrays
// input is two arrays
// start with match as false
// for each value in objectA, check to see if it matches a value in objectB
  // if match is found, returns true (set to variable for match found = true)
    // flag to break loop if match is true
  // if no match is found, returns false

// if key-match and value-match are both true, returns true
// otherwise, returns false

var myVacations = {"Hawaii" : 2 , "Alaska" : 1, "Iceland" : 4, "China" : 0}
var friendVacations = {"Bali" : 1, "Iceland" :1, "Russia" : 2, "Austria" : 1}
var sisterVacations = {"Italy" : 1, "Mexico" : 6, "Louisiana" : 6, "Washington DC" : 5}
var obj1Keys = [];
var obj2Keys = [];

var obj1Values = [];
var obj2Values = []

function keysToArray(obj1, obj2) {
  for (var key in obj1) {
    obj1Keys.push(key);
  }
  for (var key in obj2) {
    obj2Keys.push(key);
  }
 
   checksValue(keyChecker(obj1Keys, obj2Keys))
}

// function keysToArray(obj1) {
//   for (var key in obj1) {
//     obj1Keys.push(key);
//   }
// }

// function valuesToArray(obj1, obj2) {
//   for(var value in obj1) {
//     obj1Values.push(obj1[value]);
//   }
//   for(var value in obj2) {
//     obj2Values.push(obj2[value]);
//   }

// }


function keyChecker(arr1, arr2) {
  var keyMatches = false
  for(var i=0; i < arr1.length; i++) {
    for(var j=0; j < arr2.length; j++) {
      if (arr1[i] === arr2[j]) {
         console.log(arr1[i]);
         keyMatches = true;
         return (i)
      }
    }
  }
}

function checksValue(i) {
  // if obj1[i] === obj2(obj1[i])
}
10, 8, 7, 6, 5, 4, 2, 1

// function valueChecker(object1, object2) {
//   var valueMatches = false
//   for(var i=0; i < object1.length; i++) {
//     for(var j=0; j < object2.length; i++) {
//       if (object1[i] === object2[j]) {
//         valueMatches = true;
//         return object1[i];
//       }
//     }
    
//       }
//   }



// ////////////////////////////////////////////////////////////////////////////
/* 

no input
// size variable will be random number 1 to 10 to determine size of word.
// add random letters (size variable number of times) until variable length equals the random integer. 

input is integer.
//loops through the process input integer number of times
*/


function makesWord() {
  var lettersBank = "abcdefghijklmnopqrstuvwxyz";
  var word = ""
  // var array = []
  for( var i = 0; i <= (Math.floor(Math.random() * 10) + 1); i++) 
    word += lettersBank.charAt(Math.floor(Math.random() * lettersBank.length))
  return word

}


function arraysOfWords(i) {
 var array = [];
 for (j = 1 ; j < i+1; j++) 
  array.push(makesWord())
  return array;
}




 // Driver Code /////////////
//for release 0:
// var originalArray = ["long phrase", "a", "longest phrase"]
// printLongest(originalArray)

// var array1 = ["b", "this is the longest phrase", "sssssss"]
// printLongest(array1)



// // for release 1
// // console.log(myVacations)
// console.log(keysToArray(myVacations, friendVacations))
// console.log(obj1Keys)
// console.log(obj2Keys)

// console.log(valuesToArray(myVacations, friendVacations))
// console.log(obj1Values)
// console.log(obj2Values)

// // console.log(keyChecker(obj1Keys, obj2Keys))



// driver code checks function arraysOfWords works correctly 
console.log(arraysOfWords(6))

// does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
for (i = 0 ; i < 10; i++) {
  var generatedArray = (arraysOfWords(5))
  console.log(generatedArray)
  printLongest(generatedArray)
}






