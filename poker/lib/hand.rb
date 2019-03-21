require_relative "deck"

class Hand
  attr_reader :deck, :playing_hand

  TYPE_OF_HANDS = {}

  def initialize
    @deck = Deck.new.shuffle
    @playing_hand = []
    deal_cards
  end

  def deal_cards
    5.times do |card|
      @playing_hand << @deck.pop
    end
  end
end
