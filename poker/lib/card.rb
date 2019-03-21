class Card
  attr_reader :name, :suit
  SUITS = [:♦️, :♥️, :♣️, :♠️]
  VALUES = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, J: 11, Q: 12, K: 13, A: 14 }

  def initialize(name, suit)
    @name = name
    @suit = suit
  end

  def get_value
    VALUES[self.name]
  end

  def self.suits
    SUITS
  end

  def self.values
    VALUES
  end
end
