require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let("cookie"){Dessert.new("cookie",4,chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cookie.type).to eq("cookie")
    end

    it "sets a quantity" do
      expect(cookie.quantity).to eq(4)
    end


    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("cookie","sugar",chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cookie.add_ingredient("vanilla")).to include("vanilla")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sugar","vanilla","flour"]
      ingredients.each do |ingre|
        cookie.add_ingredient(ingre)
      end
      expect(cookie.ingredients).to eq(ingredients)
      cookie.mix!
      expect(cookie.ingredients).not_to eq(ingredients)
      expect(cookie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookie.eat(2)
      expect(cookie.quantity).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do

      expect{cookie.eat(10)}.to raise_error("not enough left!")
    end
  end
  #
  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("TingTing the Mysterious Chef")
      expect(cookie.serve).to eq("TingTing the Mysterious Chef has made 4 cookies!")
    end
  end
  #
  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(Dessert)
    end
  end

end
