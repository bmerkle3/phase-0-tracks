class Santa
  attr_reader :ethnicity, :age 
  attr_accessor :gender

  def initialize (gender, ethnicity)
    @gender = gender
    @ethnicity  = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak 
    puts "Ho, ho, ho! Haaaaaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def randomize_age(i)
    age = rand(i)
  end 

#Had to add this method to get the gender to print: 
#the @ethnicity only works within this class initialization. To call from 
#outside, a method is needed. 
  # def states_gender
  #   puts "This santa is #{@gender}"
  # end

  # def states_ethnicity
  #   puts "This santa is #{@ethnicity}"
  # end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    i= @reindeer_ranking.index(reindeer_name) 
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(i))
    puts "#{reindeer_name} is now in ranking place:"
    puts @reindeer_ranking.index(reindeer_name) + 1
  end
  
  #getter methods... all commented out for refactoring at end of release 3
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender= (new_gender)
  #   @gender = new_gender
  # end  

end


#####
#Driver code

# st_nick = Santa.new("female", "prefer not to say")

#  st_nick.speak

# st_nick.eat_milk_and_cookies("chocolate chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

#(was q): how to get this to print ethnicity and gender??
# santas.each do 
#   puts "There are now #{santas.length} santa instances in the array" 
#   puts "---------------------"
# end

# refactored version 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#QUESTION:why can't I use #each method?
example_genders.length.times do |i| #why not with .each???
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


st_nikita = Santa.new("agender", "Japanese-African")
# st_nikita.states_gender
# st_nikita.states_ethnicity

#(was q): how to get this to print ethnicity and gender (without a getter or setter)?? ANSWER: pass in the 
#object you want the instance method to be called on (add the "santa" parameter)
  # santas.each do |santa|
  #   santa.states_gender
  #   santa.states_ethnicity
  #   puts "There are now #{santas.length} santa instances in the array" 
  #   puts "---------------------"
  # end

# driver code checking get_mad_at, age, celebrate_birthday, setter method for gender
st_nikita.get_mad_at("Rudolph")
p st_nikita.age
p st_nikita.celebrate_birthday
p st_nikita.age
p st_nikita.ethnicity
p st_nikita.gender = "bigender"


###############################################################################
###release 4#####
###############################################################################
#get program to loop about 100 times
#generate random genders paired with random ethnicity
  #similar to block above, where index 'i' is variable set to random number
  # use arr.sample method
#age to random number between 1-140
#print Santas attributes

p "release4 starts here"

santas1 = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
98.times do |i|
  santas1 << Santa.new(example_genders.sample, example_ethnicities.sample)
  #age = rand(140) #<-- have to add new instance method to randomize age?
end


santas1.each do |santa|
    puts santa.ethnicity
    puts santa.gender
    puts santa.randomize_age(140)
    p "_____________________"
end









