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
  client_details["age"] = gets.chomp
puts "Does client have children? y or n"
  client_details["kids"] = gets.chomp
puts "Number of Children:" 
  client_details["number_children (if applicable"] = gets.chomp
puts "Theme of decor:"
  client_details["decor_theme"] = gets.chomp
puts "Favorite color of client:"
  client_details["fav_color"] = gets.chomp
# array here for additional info - unsure of how many additional pieces of info, not able to add keys.
additional_info = [""]


puts "Additional client information (enter 'none' when complete)"
  loop do
    input = gets.chomp
    break if input == "none"
    additional_info << input
  end

p client_details["name"]

p additional_info









# 2. hash to keep track of data
  # -needs to be mix of string, integer, boolean data

  #loop with typical data entry keys
  #option at end to add extra comments (breaks loop with "none")