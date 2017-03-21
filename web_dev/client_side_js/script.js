console.log("Script is running!")

// function hidePizzaButton() {
//   var el = document.getElementById("button")
//   pic.hidden = true;
// }

function hidePizzaButton(event) {
  event.target.hidden = true;
}

var pic = document.getElementById("pizza");
var el = document.getElementById("button");
el.addEventListener("click", hidePizzaButton);

