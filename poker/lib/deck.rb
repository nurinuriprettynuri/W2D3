require_relative "card"

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    assign_deck
  end

  def assign_deck
    Card.suits.each do |s|
      Card.values.each do |k, v|
        @cards << Card.new(k, s)
      end
    end
  end

  def shuffle
    @cards.shuffle
  end
end
