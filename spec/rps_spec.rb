require 'rock_paper_scissors'
describe Game do
  before :each do
    @game = Game.new
  end
  it "Declars winner when Paper beats Rock" do
    @game.player1 = double :player1, choice: :paper
    @game.player2 = double :player2, choice: :rock
    allow(@game.player1).to receive(:winner=).and_return(nil)
    allow(@game.player2).to receive(:winner=).and_return(nil)
    @game.evaluate_game
    expect(@game.winner).to eq :player1
  end

  it "Declars Draw when both players choose Rock" do
    @game.player1 = double :player1, choice: :rock
    @game.player2 = double :player2, choice: :rock
    expect(@game.evaluate_game).to eq :draw
  end

  it "Declares winner when Rock beats Scissors" do
    @game.player1 = double :player1, choice: :scissor
    @game.player2 = double :player2, choice: :rock
    allow(@game.player1).to receive(:winner=).and_return(nil)
    allow(@game.player2).to receive(:winner=).and_return(nil)
    @game.evaluate_game
    expect(@game.winner).to eq :player2
  end

  it "Declares winner when Scissors beats paper" do
    @game.player1 = double :player1, choice: :scissors
    @game.player2 = double :player2, choice: :paper
    allow(@game.player1).to receive(:winner=).and_return(nil)
    allow(@game.player2).to receive(:winner=).and_return(nil)
    @game.evaluate_game
    expect(@game.winner).to eq :player1
  end

end
