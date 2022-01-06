class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def score
    puts "#{@player1.name}: #{@player1.LIVES}/3 vs #{@player2.name}: #{@player2.LIVES}/3"
  end

  def is_game_over?(current_player, opponent)
    if current_player.LIVES == 0
      puts "#{opponent.name} WINS! with a score of #{opponent.LIVES}/3! CONGRATULATIONS!" 
      puts "----- GAME OVER -----\n Good Bye!"
      exit()
    end
  end    

  def play
    @player1.question
    is_game_over?(@player1, @player2)
    score
    @player2.question
    is_game_over?(@player2, @player1)
    score
    puts "----- NEW TURN -----"
    play
  end
end