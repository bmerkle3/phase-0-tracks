#initializes with attributes:
  # attr @variable can be set by first user

  #interface message tells second user to start guessing, 

 #method to make a new V2 variable, which changes all letters to underscores
 # => if statement so as letters are guessed, they appear in word.
# => must save latest version (with guessed letters-- overwrite previous version)
# =>  so the letters that have been guessed accumulate.
 
 #method that compares V2 variable to the attr @variable
# => if statement that returns congratulations if user2 enters letters that equal @variable
# => # => returns taunting message if user2 can't guess within allotted guesses

 #method to limit number of guesses to length of word (loop & #length)
# =>  if statement so repeat guesses don't count against user2
# => else 'turn' counter increases by one

class Word_game

  def initialize (word)
    @word = word 
  end 

  def char_to_underscore
    characters = @word.length
    p "_ " * characters
  end

  def guesses_limit
    characters = @word.length
  end

  def compare(word2)
    if @word == word2
      p "Congratulations, you guessed the word!"
    else
      p "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P"
      
    end
  end

# tesst = Word_game.new("word")
# tesst.compare("word2")
end


