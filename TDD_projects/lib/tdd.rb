class Array
  def my_uniq
    uniq = []
    self.each { |el| uniq << el if !uniq.include?(el) }
    uniq
  end

  def two_sum
    pairs = []
    self.each_index do |i|
      self.each_index do |j|
        if self[i] + self[j] == 0 && i < j
          pairs << [i, j]
        end
      end
    end
    pairs
  end

  def my_transpose
    (0...self.length).each do |i|
      (i...self.length).each do |j|
        self[i][j], self[j][i] = self[j][i], self[i][j]
      end
    end

    self
  end
end

def stock_picker(stock_prices)
  pairs = []

  2.times do
    max = stock_prices.max
    pairs << stock_prices.index(max)
    stock_prices.delete(max)
  end

  pairs
end
