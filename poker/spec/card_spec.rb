require "card"

RSpec.describe Card do
  subject(:card) { Card.new(:seven, "♦️") }

  describe "#initialize" do
    it "accepts a value and a suit" do
      expect(card.name).to eq(:seven)
      expect(card.suit).to eq("♦️")
    end
  end

  describe "#get_value" do
    it "gets the value for each card" do
      expect(card.get_value).to eq(7)
    end
  end

  describe "::suits" do
    it "returns the array in our constant SUITS" do
      expect(Card.suits).to eq([:♦️, :♥️, :♣️, :♠️])
    end
  end

  describe "::values" do
    it "returns the array in our constant SUITS" do
      expect(Card.values).to eq({ two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, J: 11, Q: 12, K: 13, A: 14 })
    end
  end
end
