require "rspec"

class ChangeMachine
  def value_to_coins(value)
    coin_values = [25, 10, 5, 1]
    coins = []
    coin_values.each do |coin_value|
      while value >= coin_value
        coins << coin_value
        value -= coin_value
      end
    end
    coins
  end
end

RSpec.describe ChangeMachine do
  describe "#value_to_coins" do
    it "should return [1] if given 1" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(1)
      expect(result).to eq([1])
    end

    it "should return [1, 1] if given 2" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(2)
      expect(result).to eq([1, 1])
    end

    it "should return [5] if given 5" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(5)
      expect(result).to eq([5])
    end

    it "should return [10] if given 10" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(10)
      expect(result).to eq([10])
    end

    it "should return [25] if given 25" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(25)
      expect(result).to eq([25])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
