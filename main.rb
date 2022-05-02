require "./player"
require "./game"
require "./question"

#Initalize players

puts "Player 1: What is your name?"
name1 = gets.chomp
p1 = Player.new(name1)

puts "Player 2: What is your name?"
name2 = gets.chomp
p2 = Player.new(name2)


# Initalize game
game = Game.new(p1, p2)

# Looping condition
while p1.life > 0 && p2.life > 0 
  
  puts "----New Turn ------"
  question = Question.new
  puts "#{game.current_player.name} Here is your question:"
  question.random_number_question_generator
  answer = gets.chomp.to_i
if answer == question.answer

  puts "Good job you got the question right!" 

  game.report_life
 puts  game.switch_player

else
  puts "Sorry you got the question wrong."
  game.lose_life
  game.report_life
  game.switch_player
end
end