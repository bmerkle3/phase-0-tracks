

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

p designer_application.keys


#release 3
# typical responses stored in hash keys
client_details = {
  name: "",
  age: "",
  kids: "", 
  number_children: "",
  decor_theme: "",
  fav_color: ""
}


# 1. interface will be necessary to prompt designer/user for info
puts "Client Name:"
  client_details["name"] = gets.chomp
puts "Client Age:" 
  client_details["age"] = gets.chomp.to_i
puts "Does client have children? y or n"
  client_details["kids"] = gets.chomp
puts "Number of Children:" 
  client_details["number_children (if applicable"] = gets.chomp.to_i
puts "Theme of decor:"
  client_details["decor_theme"] = gets.chomp
puts "Favorite color of client:"
  client_details["fav_color"] = gets.chomp
  # prints haxh when designer answered all questions
p client_details



# program that allows updates to the info

correction = nil 
value = nil
  
    
puts "please check above information and enter category to correct, if necessary. Enter 'none' to cancel."
    correction = gets.chomp.to_sym
puts "please update the value for this category"
     value = gets.chomp


client_details [correction] = value


 p client_details
   

