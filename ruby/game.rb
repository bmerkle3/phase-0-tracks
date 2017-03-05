#initializes with attributes:
 
  # guess count attr
  # attr is_over (starts as false)

  #interface message telling 1st user to put in a word? -- if this variable stored as 
   # variable can be set by first user

  #interface message tells second user to start guessing, 


 #method to take in the variable, and changes all letters to underscores

 #method to take in argument as underscores and 
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

  attr_accessor :word, :word_array, :spaces 
  

  def initialize
    @word = "testing"
    @word_array = []
    @spaces = ""
  end 

  def stores_word
    @word_array = @word.split("")
    @word_array
  end

  def char_to_underscore
    # characters = @word.length
    # spaces =  "_" * characters
    # @spaces_arr = spaces.split("")
  end

  def match_letters(letter)
    # if @word_array.include?(letter)
    #   i = @word_array.index
    #   @spaces(i) = (letter)
    # end
  end


  def guesses_limit
    # characters = @word.length
  end

  def compare(word2)
    # if @word == word2
    #   p "Congratulations, you guessed the word!"
    # else
    #   p "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P" 
    # end
  end

end

puts "please enter a word:"
    @word = gets.chomp


