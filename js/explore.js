// for each letter of a string (string1), 
//  start at last index (far right) and use that letter to make a new string (string2) that places the character starting at the left
// as the index counter of string 1 decreases (progressing to each letter moving right to left), it adds the character to string 2, adding letters from left to right.



var string1 = "hello"


function reverse(string) {
  var num = 3
  var string2 = ""
  for (var i = string.length - 1; i >=0; i --) {
    string2 += string[i];
  }
  if (num < 5) {
    console.log(string2);
  }
}

// driver code
reverse("hey there")

