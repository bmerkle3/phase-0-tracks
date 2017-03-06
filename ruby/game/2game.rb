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

  attr_accessor :word, :word_array, :spaces_array, :letters_guessed, :guess, :word2, :turns_taken, :dup_check
  attr_reader :turn_over
  

  def initialize(word)
    @word = word
    @word_array = word.split("")
    @spaces_array = []
    @letters_guessed = []
    @guess = ""
    @word2 = ""
    @turns_taken = 0
    @dup_check
  end 

  def char_to_underscore
    characters = @word.length
    spaces =  "_" * characters
    spaces
    @spaces_array = spaces.split("")
    @spaces_array.join(' ')
  end

  def match_letters(letter)
    @guess = letter
    @letters_guessed << @guess
    array_i = []
    if @word_array.include?(@guess)
     array_i = @word_array.each_index.select {|ind| @word_array[ind] == @guess}
      array_i.each {|i| @spaces_array[i] = (@guess)}
    end
    @spaces_array.join(' ')
  end

  def already_guessed
    @dup_check = @letters_guessed
    # @dup_check.delete_at(-1)
    if @dup_check.include?(@guess)
      @turns_taken = @turns_taken
    else 
      @turns_taken +=1
    end
   end

  def compare
    if @word == @word2
      p "Congratulations, you guessed the word! It was '#{@word}' "
    else
      p "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P) The word was '#{@word}' " 
    end
  end

end



#user interface 

puts "Welcome to the Word Game!"
game = Word_game.new("pillow")
  
p game.char_to_underscore #returns string with spaces between underscores

turns_allowed = game.word.length

puts "Total number of guesses allowed:"
p turns_allowed

while game.turns_taken < turns_allowed
  puts "please guess a letter:"
    game.guess = gets.chomp
    game.match_letters(game.guess)  #returns string with spaces between underscores& letters
    game.already_guessed
    game.turns_taken += 1
    # game.dup_check = game.letters_guessed.delete_at(-1)
      #   if game.dup_check.include?(game.guess)
      #   puts "true"
      # end
      # #   turns_taken -+1
      # # end 
    p game.spaces_array.join(' ') 
    
    p game.letters_guessed
    p game.turns_taken
    game.word2 = game.spaces_array.join('')
end
  game.compare





