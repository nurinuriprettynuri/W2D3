require "deck"

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "sets a cards array with 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    # it "sets cards array with unique value & unique suit to all 52 cards" do
    #     expect()
    # end
  end

  describe "#shuffle" do
    it "shuffles the cards in the deck" do
      deck.shuffle
      expect(deck.shuffle).to_not eq(deck.cards)
    end
  end
end
