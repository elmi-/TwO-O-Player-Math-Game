class Player
  attr_accessor :name, :LIVES
  def initialize(name)
    @name = name
    @LIVES = 3
  end

  def wrong_answer
    @LIVES -= 1
  end

  def question
    q = Question.new
    puts q.new_question(@name)
    player_answer = gets.chomp
    if q.correct_answer?(player_answer.to_i)
      puts "Correct!"
    else
      puts "Wrong!"
      wrong_answer
      puts "#{@name} now has #{@LIVES} lives remaining"
    end
  end
end