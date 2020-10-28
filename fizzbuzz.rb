require "rspec"

class Fizzbuzz
  def convert(number)
    return "FIZZBUZZ" if number % 15 == 0
    return "FIZZ" if number % 3 == 0
    return "BUZZ" if number % 5 == 0
    return number
  end

  def run
    index = 1
    while index <= 100
      puts convert(index)
      index += 1
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.run

RSpec.describe Fizzbuzz do
  describe "#convert" do
    it "should return 1 if given 1" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(1)
      expect(result).to eq(1)
    end

    it "should return 2 if given 2" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(2)
      expect(result).to eq(2)
    end

    it "should return FIZZ if given 3" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(3)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 5" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(5)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZ if given 6" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(6)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 10" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(10)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZBUZZ if given 15" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.convert(15)
      expect(result).to eq("FIZZBUZZ")
    end
  end
end
