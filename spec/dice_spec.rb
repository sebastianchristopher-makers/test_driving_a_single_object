require 'dice'

describe Dice do
  context 'works with one dice' do
    it 'creates a Dice object' do
      dice = Dice.new
      expect(dice).to be_kind_of(Dice)
    end
    it 'responds to a method called roll_dice' do
      dice = Dice.new
      expect(dice).to respond_to(:roll_dice)
    end
    it 'returns a number between 1 and 6' do
      dice = Dice.new
      expect(dice.roll_dice[0]).to be_between(1, 6).inclusive
    end
    it 'returns a random number between 1 and 6' do
      dice = Dice.new
      rolls = []
      (1..100).each {
        rolls << dice.roll_dice
      }
      expect(rolls.map { |el| el[0] }.uniq.sort).to eq([1, 2, 3, 4, 5, 6])
    end
  end

  context 'should work for more than once dice' do
    it 'responds to a method called roll_dice' do
      dice = Dice.new(10)
      expect(dice).to respond_to(:roll_dice)
    end
    it 'returns two numbers between 1 and 6' do
      two_dice = Dice.new(2)
      rolled_dice = two_dice.roll_dice
      expect(rolled_dice[0]).to be_between(1, 6).inclusive
      expect(rolled_dice[-1]).to be_between(1, 6).inclusive
      expect(rolled_dice.size).to eq(2)
    end
    it 'returns n numbers when initialized with n' do
      n = rand(1..50)
      n_dice = Dice.new(n)
      rolled_dice = n_dice.roll_dice
      expect(rolled_dice.size).to eq(n)
    end
  end
end
