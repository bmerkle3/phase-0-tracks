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

  attr_accessor :word, :word_array, :spaces_array, :letters_guessed, :guess, :word2 
  attr_reader :turn_over
  

  def initialize
    @word = ""
    @word_array = @word.split("") 
    @spaces_array = []
    @letters_guessed = []
    @guess = ""
    @turn_over = false
    @word2 = ""
  end 


  # def stores_word
  #   @word_array = @word.split("")
  #   p @word_array
  # end

  def char_to_underscore
    characters = @word.length
    p characters
    spaces =  "_" * characters
    spaces
    @spaces_array = spaces.split("")
    p @spaces_array #.join(' ')
  end

  def match_letters
    @letters_guessed << @guess
    array_i = []
    if @word_array.include?(@guess)
     array_i = @word_array.each_index.select {|ind| @word_array[ind] == @guess}
      array_i.each {|i| @spaces_array[i] = (@guess)}
    end
    @spaces_array.join(' ')
  end

  # def adds_spaces(array)
  #    array.join(' ')
  # end


  def compare
    if @word == @word2
      p "Congratulations, you guessed the word! It was '#{@word}' "
    else
      p "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P) It was '#{@word}' " 
    end
  end

end

#user interface 

puts "Welcome to the Word Game!"
game = Word_game.new



puts "User 1, please enter a word:"
    @word = gets.chomp
    p @word

     #game.stores_word #stores word as @word_array
    p game.char_to_underscore #returns string with spaces between underscores
    p @word
turns_taken = 0
turns_allowed = @word.length

while turns_taken < turns_allowed
  puts "User 2, please guess a letter:"
    @guess = gets.chomp
    game.match_letters  #returns string with spaces between underscores& letters

  if @letters_guessed.include?(@guess)
        turns_taken = turns_taken
      elsif !@letters_guessed.include?(@guess)
        turns_taken += turns_taken
  end
    
    #   #Needs to add a counter that ends turn (turns @turn_over = true) when counter == @word.length
    #   
end
  @word2 = 
  game.compare





