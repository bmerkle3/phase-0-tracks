require_relative 'game'


describe Word_game do
  let (:game) { Word_game.new }

  it "changes characters to underscores" do
    expect(game.char_to_underscore("word1")).to eq "_____"
  end



  
end