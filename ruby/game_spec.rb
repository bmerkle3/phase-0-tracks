require_relative 'game'


describe Word_game do
  let (:game) { Word_game.new("word") }

  it "changes characters to underscores" do
    expect(game.char_to_underscore).to eq "_ _ _ _ "
  end

  it "sets variable to loop to number of letters in argument" do
    expect(game.guesses_limit).to eq 4
  end

  it "sets limit for guesses" do
    expect(game.compare("word2")).to eq "Hmmm.. I guess we can't all be mind readers (it really wasn't that hard, though... :P"
  end

  
end