require "rspec"

RSpec.describe ChangeMachine do
  describe "#value_to_coins" do
    it "should return [1] if given 1" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(1)
      expect(result).to eq([1])
    end
  end
end
