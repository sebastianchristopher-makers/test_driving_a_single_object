require_relative './lib/dice.rb'

dice = Dice.new
dice.roll # => [random number between 1 and 6]

two_dice = Dice.new(2)
dice.roll # => [random number between 1 and 6, random number between 1 and 6]
