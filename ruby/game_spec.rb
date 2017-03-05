require_relative 'game'


describe Word_game do
  let (:game) { Word_game.new }

  it "changes characters to underscores" do
    expect(game.char_to_underscore("word1")).to eq "_____"
  end

  it "sets variable to loop to number of letters in argument" do
    expect(game.guesses_limit("word1")).to eq 5
  end

  it "sets limit for guesses" do
    expect(game.compare(word1, word2)).to eq false
  end

  
end