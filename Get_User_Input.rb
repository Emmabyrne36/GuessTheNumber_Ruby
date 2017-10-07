class Get_User_Input
  attr_accessor :guessNum

  def get_input
    puts("Please enter a number between 1 and 100: \n")
    # Convert userInput into a Fixnum
    userInput = gets.to_i

    return userInput
  end

  def keepScore(score)
    score += 1
    return score
  end

end