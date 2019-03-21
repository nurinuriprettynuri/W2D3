require "towers_of_hanoi"

RSpec.describe TowersOfHanoi do
  subject(:towers) { TowersOfHanoi.new }

  describe "#initialize" do
    it "intialize the all three stacks and sets the first stack with the three elements" do
      expect(towers.stacks).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#move" do
    it "it moves disc to another stack" do
      towers.move(0, 1)
      expect(towers.stacks).to eq([[3, 2], [1], []])
    end
  end

  describe "#won?" do
    context "when all the discs are moved to tower 1 or 2" do
      it "returns true" do
        towers.stacks = [[], [], [3, 2, 1]]
        expect(towers.won?).to be true
      end
    end

    context "when the discs aren't all moved on to one stack" do
      it "returns false" do
        towers.stacks = [[], [1], [3, 2]]
        expect(towers.won?).to be false
      end
    end
  end

  describe "#valid_move?" do
    context "when valid move" do
      it "return true" do
        towers.stacks = [[3, 2, 1], [], []]
        expect(towers.valid_move?(0, 2)).to be true
      end
    end
    context "when not a valid move" do
      it "return false" do
        towers.stacks = [[3], [1], [2]]
        expect(towers.valid_move?(0, 1)).to be false
      end
    end
  end
end
