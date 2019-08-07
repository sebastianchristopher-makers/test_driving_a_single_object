class Dice
  def initialize(number_dice = 1)
    @number_dice = number_dice
  end

  def roll_dice
    rolled_dice = []
    @number_dice.times {
      rolled_dice << roll
    }
    rolled_dice
  end

    private
    def roll
      rand(1..6)
    end
end
