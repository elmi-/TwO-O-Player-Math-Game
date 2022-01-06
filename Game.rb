class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def play
    puts "Welcome"
    @player1.question
    @player2.question
  end
end