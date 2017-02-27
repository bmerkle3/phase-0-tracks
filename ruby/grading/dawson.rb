puts "How many employees will processing today?"
employees=gets.chomp.to_i

while employees>0

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
if age<100
  age=TRUE
elsif age>100
  age=FALSE
end

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
bread = gets.chomp

if bread=="Y"
  bread=TRUE
elsif bread=="N"
bread=FALSE
end

puts "Would you like to enroll in the company’s health insurance? (Y/N)"
insurance = gets.chomp

if insurance == "Y"
  insurance=TRUE
elsif insurance=="N"
  insurance=FALSE
else
  puts "Error"
end

stop=FALSE
allergy=FALSE

until stop
puts "Name all allergies one at a time. Enter done when complete. (If no allergies exists, enter done.)"
answer=gets.chomp

if answer=="done"
  stop=TRUE
elsif answer=="sunshine"
allergy=TRUE
stop=TRUE
end
end


if name=="Drake Cula" || name=="Tu Fang"
puts "Definitely a vampire"
elsif allergy || !age && (bread || insurance) 
puts "Probably a vampire"
elsif !(age && bread && insurance)
puts "Almost certainly a vampire."
elsif age && bread && insurance
  puts "Probably not a vampire."
else
  puts "Results inconclusive."
end
employees-=1
end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."