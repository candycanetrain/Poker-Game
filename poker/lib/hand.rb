require 'deck'


ROYAL_FLUSH = [:A, :K, :Q, :J, :"10"]
FACE_CARDS = [:A, :K, :Q, :J]

class Hand
  attr_accessor :deck, :cards_in_hand
  def initialize(deck)
    @deck = deck
    @cards_in_hand = @deck.take_five

  end

  def get_ranking
    card_symbols = get_symbols
    return 1 if card_symbols.all?{|card| ROYAL_FLUSH.include?(card)}
    hearts = 0
    spades = 0

    match_occurences = {
      key => occurences (default 0)
    }



    card_symbols.each do |symbol|
      match_occurences[symbol] += 1

    end

    match_occurences.keys.select do |k,v| 
      value > 1

    end
  end

  def get_symbols
    card_symbols = []
    cards_in_hand.each do |card|
      card_symbols << card.symbol
    end
    card_symbols
  end
end
