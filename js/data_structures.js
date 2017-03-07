var colors = ["red", "orange", "yellow", "green"];

var names = ["Ed", "Chester", "Henry", "Dust Commander"];

colors.push("blue");

names.push("He Ain't No Saint");

console.log(colors);

console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++ ) {
 horses[names[i]] = colors[i];
}

console.log(horses);