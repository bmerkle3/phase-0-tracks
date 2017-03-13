var myVacations = {"Hawaii" : 2 , "Alaska" : 1, "Iceland" : 4, "China" : 0}
var friendVacations = {"Bali" : 1, "Iceland" :1, "Russia" : 2, "Austria" : 1}
var sisterVacations = {"Italy" : 1, "Mexico" : 6, "Louisiana" : 6, "Washington DC" : 5}


function keysToArray(object) {
  objKeys = []
  for (var key in object) {
    objKeys.push(key);
    return objKeys
  }
}

console.log(keysToArray(myVacations))