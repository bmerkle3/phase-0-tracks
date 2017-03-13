
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
// input is two objects
// 
// start with match as false
// for each key in objectA, check to see if it matches a key in objectB
  // if match is found, returns true (set to variable for match found = true)
  // flag to break loop if match is true
  // if no match is found, returns false

// input is two objects
// start with match as false
// for each value in objectA, check to see if it matches a value in objectB
  // if match his found, returns true (set to variable for match found = true)
    // flag to break loop if match is true
  // if no match is found, returns false


// if key match and valuematch are false, returns false
// otherwise, returns true
var myVacations = {"Hawaii", "Alaska", "Iceland", "China"}
var friendVacations = {"Bali", "Iceland", "Russia", "Austria"}
var sisterVacations = {"Italy", "Mexico", "Louisiana", "Washington DC"}


function keyChecker(object1, object2) {
  var matches = false
  while(var i=0; i <object1.length; i++) {

    
      }
  }
}

// ////////////////////////////////////////////////////////////////////////////
/* input is integer.
// uses hashes so keys are 0-(i-1)?
// for each key: 
// size variable will be random number 1 to 10 to determine size of word.
// Math.floor(Math.random() * 10)
// loop if num = 0
// add random letters size variable number of times until variable length equals the integer input. 
*/

 // Driver Code /////////////
//for release 0:
var originalArray = ["long phrase", "a", "longest phrase"]
printLongest(originalArray)

var array1 = ["b", "this is the longest phrase", "sssssss"]
printLongest(array1)




