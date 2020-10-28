require "rspec"

class ChangeMachine
  def value_to_coins(value)
    coins = []
    while value > 0
      if value >= 25
        coins << 25
        value -= 25
      elsif value >= 10
        coins << 10
        value -= 10
      elsif value >= 5
        coins << 5
        value -= 5
      else
        coins << 1
        value -= 1
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
