/* 
//release 1

//creates array : keysToArray
input is 1 objects
changes key of the objects to an array  
saves array in method
returns array


// 
// checks key arrays with object: matchArrWithObject
 (try to call the value of the key)
// input is 1 object
// check each word in array for matches in object
// if nothing returns, no key matches (the object must return false)
// if something returns, save pair as a variable
// call the matching key on original object (which was turned into an object)
// if it matches the saved pair variable, there is a key value match





*/

var myVacations = {"Hawaii" : 2 , "Alaska" : 1, "Iceland" : 4, "China" : 0}
var friendVacations = {"Bali" : 1, "Iceland" :1, "Russia" : 2, "Austria" : 1}
var sisterVacations = {"Italy" : 1, "Mexico" : 6, "Louisiana" : 6, "Washington DC" : 5}
var obj1Keys = [];




function matchArrWithObject(array, object) {
  for (var i = 0; i < array.length; i ++) {
    console.log(array[i])
  }

}


function keysToArray(obj1) {
 for (var key in obj1) {
    obj1Keys.push(key);
  }
  return obj1Keys
}



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



// console.log(myVacations)
console.log(keysToArray(myVacations))
console.log(obj1Keys)
// console.log(keysToArray(matchArrWithObject()))



// console.log(keyChecker(obj1Keys, obj2Keys))




