# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "! OMG!!!" " :)"
#   end

# p self.yell_angrily("heyy")
# p self.yelling_happily("wow")
# end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

    def yelling_happily(words)
    words + "! OMG!!!" " :)"
  end
 end 


class Angry_parent
  include Shout
end

class Sports_fan
  include Shout
end

parent = Angry_parent.new 
p parent.yell_angrily("Go to your room")
p parent.yelling_happily("I love you so much")

fan = Sports_fan.new
p fan.yelling_happily("What a play")
p fan.yell_angrily("Are you blind, ref?? What a terrible call")