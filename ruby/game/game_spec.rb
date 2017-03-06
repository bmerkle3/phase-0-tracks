require_relative 'game'


describe Word_game do
  let (:game) { Word_game.new }

  it "stores the word that has been entered into the word string & array" do 
    expect(game.stores_word).to eq ["t", "e", "s", "t", "i", "n", "g"]
  end

  it "changes characters to underscores" do
    expect(game.char_to_underscore).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "changes spaces_array variable to guessed letter at correct index" do
    expect(game.match_letters).to eq ["t", "_", "_", "t", "_", "_", "_"]
  end

  # it "adds spaces while joining characters from array to string" do 
  #   expect(game.adds_spaces(["_", "_", "_", "_", "_", "_", "_"])).to eq "_ _ _ _ _ _ _"
  # end

  it "sets limit for guesses" do
    expect(game.compare).to eq "Congratulations, you guessed the word! It was 'cat' "
  end

end
