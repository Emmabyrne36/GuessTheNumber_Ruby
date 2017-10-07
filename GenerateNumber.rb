class GenerateNumber
  attr_accessor :number

  def generateNum
    # Code to generate random number inspired from https://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
    num = rand(1..100)
    return num
  end

  def validNum?(num)
    # Checks that the generated number is within 1 and 100
    if num >= 1 and num <= 100
    then true
    else
      false
    end
  end

end