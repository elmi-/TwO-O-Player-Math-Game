class Question
  def initialize
    @val1 = rand(1...20)
    @val2 = rand(1...20)
  end
  def new_question(current_player)
    puts "#{current_player}: What does #{@val1} plus #{@val2} equal?"
  end

  def correct_answer?(player_answer) 
    answer = @val1 + @val2
    answer == player_answer
  end
end