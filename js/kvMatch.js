/* 
//release 1

//creates array : keysToArray
input is 1 objects --(for some reason I first wrote the function to change 2 objects into arrays, and nothing I tried could get just 1 to work again. every change resulted in an error.)

changes key of the objects to an array  
saves array in method
returns array

check if arrays have same value as each other
// 
// checks key arrays with object: matchArrWithObject
 (try to call the value of the key)
// input is 1 object
// check each word in array for matches in object
// if nothing returns, no key matches (the object must return false)
// if something returns, save pair as a variable
// call the matching key on original object (which was turned into an object)
// if it matches the saved pair variable, there is a key value match


// check key arrays with object (try to call the value of the key)
// input is 1 object, 1 array
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
 test1 = ['Hawaii', 'Alaska', 'Iceland', 'China']
 var objKeys = [];
 test2 = ["Bali", "Iceland", "Russia", "Austria" ]

var matched = ""
// var obj1Keys = [];
var obj2Keys = [];


// function keysToArray(obj) {
//   for (var key in obj) {
//     objKeys.push(key);
//     console.log(objKeys)
//   }
// }

function keysToArray(obj1, obj2) {
  for (var key in obj1) {
    objKeys.push(key);
  }
  for (var key in obj2) {
    obj2Keys.push(key);
    return objKeys
  }
}

function keyChecker(arr1, arr2) {
  var keyMatches = false
  for(var i=0; i < arr1.length; i++) {
    for(var j=0; j < arr2.length; j++) {
      if (arr1[i] === arr2[j]) {
        var matched = arr1[i]
         console.log(arr1[i]);
         keyMatches = true;
         return arr1[i]
         return (i)
      }
    }
  }
}

function finalMethod(object1, object2) {
  var object1Array = keysToArray(object1, object1)
  var object2Array = keysToArray(object2, object2)
  return keyChecker(object1Array, object2Array)
if (object1[matched] === object2[matched])
  return true
else
  return false
}

console.log(keysToArray(myVacations, friendVacations))
console.log(finalMethod(myVacations, friendVacations))
console.log(keyChecker(test1, test2))
// returns undefined, but updates the arrays

// // console.log(myVacations)
// console.log(keysToArray(myVacations))
// //undefined
// console.log(matchArrWithObject(obj1Keys, friendVacations))
// // true
// console.log(sisterVacations["Italy"])








// function matchArrWithObject(array, object) {
//   var valueMatch = false
//   for (var i = 0; i < array.length; i ++) {
//     console.log(array[i])
//     console.log(object[array[i]])
//     if (array[array[i]] === (object[array[i]])) {
//       valueMatch = true
//       return valueMatch
//     }
//   }
// }

// function matchArrWithObject(array, object) {
//   for (var i = 0; i < object.length; i ++) {
//     if (array[array[i]] === (object.array[i])) {
//       console.log(array[i])
//       console.log("y")
//     else 
//       console.log("no")
//     }
//   }
// }


// function keysToArray(obj1) {
//  for (var key in obj1) {
//     obj1Keys.push(key);
//   }
//   return obj1Keys
// }













// console.log(keyChecker(obj1Keys, obj2Keys))




