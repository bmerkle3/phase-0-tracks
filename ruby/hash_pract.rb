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

array2.each do |colors|
  colors.length
  good_length = 4

    while colors.length < good_length
      puts colors.chop
    end
end