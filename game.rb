require './player'

class Game
  attr_reader :report_life, :players, :current_player
  def initialize(p1, p2)
    @players = [p1, p2]
    @playersIndex = 0
    @current_player = @players[@playersIndex]
  end

  def report_life
    puts "p1:#{@players[0].life}/3 p2:#{@players[1].life}/3"
  end

  def lose_life
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{current_player.name}, you lose!"
      puts "---Game Over ---- "
      puts "Good bye!"
    end
  end 

  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end

  end
  
end

