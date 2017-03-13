# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  #creates new instance, defines arguments of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# makes attributes readable outside of class
# allows both methods to run in 1 method
  def virus_effects
    speed = speed_of_spread
    number_of_deaths = predicted_deaths
    inform_console(speed, number_of_deaths)
  end

  private

  def inform_console(speed, number_of_deaths)
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

 # predicts # of deaths based on population density and rounds outcome
  def predicted_deaths
    case @population_density 
      when (1..49)
        percentage = 0.05
      when (150..199)
        percentage = 0.3 
      when (100..149)
        percentage = 0.2
      when (50..99)
        percentage = 0.1 
      else
        percentage = 0.4
    end

    # if @population_density >= 200
    #   percentage = 0.4
    # elsif @population_density >= 150
    #   percentage = 0.3
    # elsif @population_density >= 100
    #   percentage = 0.2
    # elsif @population_density >= 50
    #   percentage = 0.1
    # else
    #   percentage = 0.05
    # end
   
    number_of_deaths = (@population * percentage).floor
  end
 #predicts speed of spread of disease based on population density
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  

    case @population_density
    when (0..49)
      speed = 2.5
    when (50..99)
      speed = 2
    when (100..149)
      speed = 1.5
    when (150.. 199)
      speed = 1
    else 
      speed = 0.5
    end

    # if @population_density >= 200
    #   speed = 0.5
    #   elsif @population_density >= 150
    #   speed = 1
    #   elsif @population_density >= 100
    #    speed = 1.5
    #   elsif @population_density >= 50
    #    speed = 2
    #   elsif 0-49
    #   speed = 2.5
    # end

  

  end

end





#=======================================================================


# # DRIVER CODE
#  # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_info|
  # puts state_info
  # puts STATE_DATA[state_name]
  state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], state_info[:population])
state.virus_effects
end

# test_alabama = 

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# p report

#=======================================================================
# Reflection Section

# differences between hash syntaxes shown in state_data file: 
  # one was a hash rocket, the other was the syntax that used keys and values
#symbols are faster to type, but sometimes it is helpful to have a string as the key, which isn't 
  #possible when using symbols
#require relative allows code written in another file to be used in the current file. 
#it is like copy-pasting the code at the top where the require_relative is inserted.

#a hash can be iterated by calling the hash keys directly, by using the .each method, 
#.map .map! .each_key .each_pair .each_value

# we realized the parameters were not necessary as they are defined as one initiates 

#My knowledge on the topic of refactoring benefited most from this assignment.


#=======================