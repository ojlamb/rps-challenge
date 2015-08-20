require 'rock_paper_scissors'
describe Game do
  before :each do
    @game = Game.new
  end
  it "Declars winner when Paper beats Rock" do
    player1 = double :player1, choice: :paper
    player2 = double :player2, choice: :rock
    @game.evaluate_game
    expect(@game.winner).to eq @game.player1
  end

  it "Declars Draw when both players choose Rock" do
    player1 = double :player1, choice: :rock
    player2 = double :player2, choice: :rock
    expect(@game.evaluate_game).to eq :draw
  end

  it "Declares winner when Rock beats Scissors" do
    player1 = double :player1, choice: :scissor
    player2 = double :player2, choice: :rock
    @game.evaluate_game
    p @game.winner
    p @game.player2
    expect(@game.winner).to eq @game.player2
  end

  it "Declares winner when Scissors beats paper" do
    player1 = double :player1, choice: :scissors
    player2 = double :player2, choice: :paper
    @game.evaluate_game
    expect(@game.winner).to eq @game.player1
  end

end
