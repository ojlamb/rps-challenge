class Player
  attr_accessor :winner, :choice

  def initialize
    @choice
    @winner = false
  end

  def selection(choice)
    @choice = choice.downcase.to_sym
  end

end
