require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)!
 Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:brownie) { Dessert.new("brownie", 100) }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cake", "tons") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("test")
      expect(brownie.ingredients).to eq(["test"])
    end
  end

  describe "#mix!" do
    before(:each) do
      brownie.add_ingredient(1)
      brownie.add_ingredient(2)
      brownie.add_ingredient(3)
      brownie.add_ingredient(4)
    end

    it "shuffles the ingredient array" do
      expect(brownie.ingredients).to eq([1, 2, 3, 4])
      brownie.mix!
      expect(brownie.ingredients).not_to eq([1, 2, 3, 4])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(1)
      expect(brownie.quantity).to eq(99)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect do
        brownie.eat(101)
      end.to raise_error
    end
  end
end
