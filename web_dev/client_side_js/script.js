console.log("Script is running!")

function hidePizzaButton(event) {
 event.target.hidden = true
  // pic.hidden = true;
}




// function hiddenPizza() {
//   var pic = document.getElementById("pizza");
//   pic.hidden = true;
// }

var pic = document.getElementById("pizza");
var el = document.getElementById("button");
el.addEventListener("click", hidePizzaButton);

