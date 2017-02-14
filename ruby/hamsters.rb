
puts "What is this hamster's name?"

hamster_name = gets.chomp

puts "On a scale from 1-10, how loud is this hamster?"

hamster_volume = gets.chomp.to_i

puts "What color is this hamster?"

hamster_color = gets.chomp

valid_input = false
until valid_input == true
  puts "is this hamster a good candidate for adoption? (y or n)"
  
  adoption_candidate = gets.chomp
 
  if adoption_candidate == "y"

    adoption_candidate = true
    valid_input = true

  elsif adoption_candidate == "n"
    adoption_candidate = false
    valid_input = true
  else
    puts "Sorry, I didn't understand that. Please input 'y or n'."
  end
end

puts "About what age is this hamster"

  age = gets.chomp

  if age == ""
    age = nil
    else 
      age = age.to_i
  end

puts "Name: #{hamster_name}"

puts "Hamster volume: #{hamster_volume}"

puts "Hamster color: #{hamster_color}"

puts "Good adoption candidate: #{adoption_candidate}"

puts "Estimated hamster age: #{age}"