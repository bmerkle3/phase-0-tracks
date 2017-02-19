
puts "How many employees will be processed?"
  times_repeated = gets.chomp.to_i

  counter = 0

while counter < times_repeated

  puts "What is your name?"
    name = gets.chomp
  
  puts "How old are you?"
    age = gets.chomp 
  puts "What year were you born?"
    birth_year = gets.chomp
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
    garlic_bread = gets.chomp
  
  puts "Would you like to enroll in the company's health insurance? (y or n)"
    health_insurance = gets.chomp



    get_final_result = false

until get_final_result
    puts "Please enter any allergies you have, type 'done' to move on."
    allergies = gets.chomp

    if allergies == "done" 
      get_final_result = true
      
    elsif allergies == "sunshine"
      get_final_result = true

    else 
      get_final_result = false
    end 

  end
  
  if name == "Drake Cula" || name == "Tu Fang"
     puts "Definitely a vampire."
    elsif allergies == "sunshine"
     puts "Probably a vampire"
   elsif allergies != "sunshine" || ((age.to_i == 2017 - birth_year.to_i) && (garlic_bread == "y" || health_insurance == "y"))
     puts "Probably not a vampire"
   elsif allergies == "sunshine" || ((age.to_i != 2017 - birth_year.to_i) && ((garlic_bread == "y" && health_insurance == "n") || (garlic_bread == "n" && health_insurance == "y")))
     puts "Probably a vampire"
   elsif age.to_i != 2017 - birth_year.to_i && garlic_bread == "n" && health_insurance == "n"
     puts "Almost certainly a vampire"
   else 
     puts "Results inconclusive"
  end
  
  counter += 1

end





