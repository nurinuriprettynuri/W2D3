require "hand"

RSpec.describe Hand do
  subject(:hand) { Hand.new }

  describe "#initialize" do
    it "deals out of hand of 5 cards" do
      expect(hand.playing_hand.length).to eq(5)
    end
  end
end
