require_relative "GenerateNumber"
require_relative "Get_User_Input"

class PlayGame
  attr_accessor :score, :name

  def playGuessTheNumber

    # Get generated number
    num = GenerateNumber.new
    num.number = num.generateNum()
    targetNumber = num.number

    # Check it's correct - if it's less than 1, set to 1, if it's greater than 100, set to 100
    if not num.validNum?(targetNumber)
      if targetNumber < 1
        then targetNumber = 1
      elsif targetNumber > 100
        then targetNumber = 100
      end
    end

    # Define userGuess class
    userGuess = Get_User_Input.new

    # Start the score by passing -1 into the keepScore function. This will set the score to 0 because keepScore
    # adds 1 onto whatever value is passed into it.
    # Any further function calls will add 1 to the new score.
    x = -1
    score = userGuess.keepScore(x)

    userGuess.guessNum = -1
    while userGuess.guessNum != targetNumber
      userGuess.guessNum = userGuess.get_input()

      # Increase the score after each guess
      score = userGuess.keepScore(score)

      # Compare the input
      if userGuess.guessNum == targetNumber
      then puts("Congratulations you have guessed the correct number!")

      elsif userGuess.guessNum > targetNumber
      then puts("Your guess is too high! Try again.\n")

      else
        puts("Your guess is too low! Try again.\n")
      end
    end

    return score

  end

end

player = PlayGame.new
p("The aim of this game is to see how long it takes you to guess the number.")
p("The lower the score the better!")
p("Please enter your name: ")
player.name = gets.chomp
player.score = player.playGuessTheNumber

if player.score == 1
  then p("Wow you got it in one! Well done!")
else
  p("It took #{player.name} #{player.score} tries to get the correct answer!")
end
