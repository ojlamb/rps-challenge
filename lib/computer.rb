class Computer
  attr_accessor :winner, :choice

  def initialize
    @choice
    @winner = false
  end

  def selection
    @choice = [:paper, :scissors, :rock].sample
  end

end
