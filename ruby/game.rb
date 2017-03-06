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

  attr_accessor :word, :word_array, :spaces, :letters_guessed 
  

  def initialize
    @word = "testing" #return to "" after testing
    @word_array = ["t", "e", "s", "t", "i", "n", "g"] #return to [] after testing
    @spaces = ""
    @spaces_array = ["_", "_", "_", "_", "_", "_", "_"] #return to [] after testing
    @letters_guessed = []
    @guess = "t"
  end 

  def stores_word
    @word_array = @word.downcase.split("")
    @word_array
  end

  def char_to_underscore
    characters = @word.length
    @spaces =  "_" * characters
    @spaces_array = @spaces.split("")
    @spaces_array
  end

  def match_letters
    @letters_guessed << @guess
    array_i = []
    if @word_array.include?(@guess)
     array_i = @word_array.each_index.select {|ind| @word_array[ind] == @guess}
      array_i.each {|i| @spaces_array[i] = (@guess)}
    end
    @spaces_array
  end


  def guesses_limit
    # characters = @word.length
    #Needs to add a counter that ends turn (turns @turn_over = true) when counter == @word.length
    #if guessed_letter_array.include?(letter)
      # counter = counter
    #elsif !guessed_letter_array.include?(letter)
      #counter += counter
  end

  def removes_spaces
  end

  def compare(word2)
    # if @word == word2
    #   p "Congratulations, you guessed the word!"
    # else
    #   p "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P" 
    # end
  end

  # game = Word_game.new
  # p game.match_letters("t")

end

# puts "please enter a word:"
#     @word = gets.chomp

puts "guess a letter:"
  @guess = gets.chomp

