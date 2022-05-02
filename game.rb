 require './player'

 class Game 

  attr_reader :life_result, :players, :current_player

  def initialize(player1, player2)
    @players= [player1, player2] 
    @current_player = @player[0]
  end

  def subtract_life
    @current_player.life -= 1  
    if current_player.life == 0 
      puts "#{@current_player.name}, you lose"
      puts "----Game Over-----"
    end 
  end 

  def report_life
    puts "P1: #{@player[0].life}/3 vs P2:#{@player[1].life}/3"
  end 
 
  def change_player 
    if current_player == @players[0]
      change_player = @player[1]
    else
      @current_player = @players[0]
   end 
  end 

end 

