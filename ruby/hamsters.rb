puts "What is this hamster's name?"

hamster_name = gets.chomp

puts "On a scale from 1-10, how loud is this hamster?"

hamster_volume = gets.chomp

puts "What color is this hamster?"

hamster_color = gets.chomp

puts "is this hamster a good candidate for adoption?"

adoption_candidate = gets.chomp

puts "About what age is this hamster"

  age = gets.chomp

  if age == ""
    age = nil
  else 
    age = gets.chomp