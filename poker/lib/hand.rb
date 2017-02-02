require 'deck'

class Hand
  attr_accessor :deck, :cards_in_hand
  def initialize(deck)
    @deck = deck
    @cards_in_hand = @deck.take_five

  end
end
