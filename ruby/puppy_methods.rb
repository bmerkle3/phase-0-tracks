class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

katyvonkaty [10:41 AM] 
class Puppy
 def initialize
    print "In itializing new puppy instance ..."
 end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(num)
   puts 'Woof!' * num
 end

 def roll_over
   print "*rolls over*" + "\n"
 end

 def dog_years(human_years)
   print human_years * 7
 end

 def add_trick(trick)
   if trick == 'waits'
    puts 'Dog is staying'
   elsif trick == 'sit'
    puts 'Dog is sitting'
  else
   puts 'Good dog'
 end

 end
end


teddy = Puppy.new
teddy.fetch('ball')
teddy.speak(4)
teddy.roll_over
teddy.dog_years(4)
teddy.add_trick('bark')
teddy.initialize