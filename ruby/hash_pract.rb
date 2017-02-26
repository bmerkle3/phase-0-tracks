# post = {
#   "date" => "6/6/10",
#   "title" => "About my Turtle",
#   "author" => "Janet Finkle",
#   "body" => "I just love my turtle Rudolph! Today he moved two inches and sat in my hand for 5 minutes."
# }

# p post["author"]

# designer_application = {
#   "Name" => "",
#   "Address" => "",
#   "Email" => "",
#   "Phone" => "",
#   "Fave shade of blue:" => "", 
#   "Wallpaper preferences (check any that apply):" => "", 
#   "Ombre is:" => ""


# }

# array2 = [ "orange", "green", "blue", "red", "yellow", "aqua"]

#  array2.each do
#   until array2.length == 2
#   array2.delete_at(-1)
#   end
# end
#  p array2


# letters_numbers = {
#   "a" => 1,
#   "b" => 2,
#   "c" => 3,
#   "d" => 4
# }

# letters_numbers.each do
#   until letters_numbers.length == 2
#   letters_numbers.delete
#   end
# end
#  p letters_numbers(d)




# irb didn't work during 5.5 solo challenge: this is the try the thing practice:

# p letters = "hello world".split('')

# p letters.class

# p letters.map! {|letter| letter.next}

# p letters

# p new_string = letters.join('')

# p "hello world".chars.map!{|letter| letter.next}.join('')




def next_vowel (names)
  current_index = 0
  vowels = "aeiou"
  new_name = ""

names.each_char do
  if names[current_index] == vowels[current_index]
    new_name = names + names[current_index].next
  else
    new_name = names
end


end




# def encrypt (code)
#   new_cod = ""
#   characters = "abcdefghijklmnopqrstuvwxyz"
# new_code.each do
#   new_code = new_code + code[counter].next 

# end
# end


# p new_code








