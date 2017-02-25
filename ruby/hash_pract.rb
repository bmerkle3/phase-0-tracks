post = {
  "date" => "6/6/10",
  "title" => "About my Turtle",
  "author" => "Janet Finkle",
  "body" => "I just love my turtle Rudolph! Today he moved two inches and sat in my hand for 5 minutes."
}

p post["author"]

designer_application = {
  name: "Bob Graham",
  address: "222 Hu Court",
  email: "bobgraham@bobgraham.com",
  phone: "999-655-3333",
  fave_shade_of_blue: "indigo", 
  wallpaper_preferences: "Photorealistic woodsy scenes (with or without squirrels)", 
  ombre_is: "Fierce"

}

p designer_application[:phone]

designer_application[:phone] = "989-655-3333"

p designer_application[:phone]

designer_application[:empl_status] = "employed"

p designer_application.keys

p designer_application

v = [:address]

p designer_application[:v]

p designer_application[:name] + designer_application[:address]

p designer_application