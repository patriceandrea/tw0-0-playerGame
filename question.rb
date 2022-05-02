require './game'

class Question 

  attr_reader :answer

  def initialize
    @answer = 0 
  end 

  def random_number_question_generator
    num = Random.new
    num1 = num.rand(100)
    num2 = num.rand(100)
    @answer = num1 + num2
    puts "What is #{num1} + #{num2} equal to?"
  end 

end 

