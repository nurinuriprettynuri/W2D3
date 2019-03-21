require "tdd"

RSpec.describe Array do
  describe "#my_uniq" do
    it "return unique element" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#to_sum" do
    it "return all pairs of positions where the elements at those positions equal zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "return the transposed version of the array" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end
end

RSpec.describe "#stock_picker" do
  it "returns the most profitable pair " do
    expect(stock_picker([1, 2, 3, 4, 5])).to include(3, 4)
  end
end
