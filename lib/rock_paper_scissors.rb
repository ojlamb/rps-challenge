require_relative 'player'
require_relative 'computer'
class Game
  attr_reader :winning_pairs
  attr_accessor :player1, :player2, :winner
  def initialize(player1 = Player.new, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @winning_pairs = [[:paper, :rock],[:scissors, :paper],[:rock, :scissors]]
    @winner
  end

  def evaluate_game
    if @player1.choice == @player2.choice
      return :draw
    end
    if @winning_pairs.include?([@player1.choice, @player2.choice])
      @player1.winner = true
      @winner = :player1
    else
      @player2.winner = true
      @winner = :player2
    end
  end

end
