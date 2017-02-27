# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# end


# class Puppy
#  def initialize
#     print "In itializing new puppy instance ..."
#  end

#  def fetch(toy)
#    puts "I brought back the #{toy}!"
#    toy
#  end

#  def speak(num)
#    puts 'Woof!' * num
#  end

#  def roll_over
#    print "*rolls over*" + "\n"
#  end

#  def dog_years(human_years)
#    print human_years * 7
#  end

#  def add_trick(trick)
#    if trick == 'waits'
#     puts 'Dog is staying'
#    elsif trick == 'sit'
#     puts 'Dog is sitting'
#   else
#    puts 'Good dog'
#  end

#  end
# end


# teddy = Puppy.new
# teddy.fetch('ball')
# teddy.speak(4)
# teddy.roll_over
# teddy.dog_years(4)
# teddy.add_trick('bark')
# teddy.initialize


class Cat

  def initialize
  print "Initializing new cat instance..."
  end
  
  def speak(num)
    puts "Purrr" * num
  end
  
  
  def chase(animal)
    puts "I just chased a #{animal}!"
  end

end



felix = Cat.new
cats = []

50.times do 
  cats <<  felix
end
puts cats.size

store_cats = []

p cats

cats.each do |x|
 puts x.speak(2) 
end

cats.each do |x|
  puts x.chase("mouse")
end

