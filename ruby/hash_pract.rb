post = {
  "date" => "6/6/10",
  "title" => "About my Turtle",
  "author" => "Janet Finkle",
  "body" => "I just love my turtle Rudolph! Today he moved two inches and sat in my hand for 5 minutes."
}

p post["author"]

designer_application = {
  "Name" => "",
  "Address" => "",
  "Email" => "",
  "Phone" => "",
  "Fave shade of blue:" => "", 
  "Wallpaper preferences (check any that apply):" => "", 
  "Ombre is:" => ""


}

array2 = [ "orange", "green", "blue", "red", "yellow", "aqua"]

 array2.each do
  until array2.length == 2
  array2.delete_at(-1)
  end
end
 p array2


letters_numbers = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}

letters_numbers.each do
  until letters_numbers.length == 2
  letters_numbers.delete
  end
end
 p letters_numbers(d)



