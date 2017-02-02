require "rspec"
require "hand"
require "deck"

describe "Hand" do
  let(:deck) {Deck.new}
  subject(:hand) {Hand.new(deck)}


  describe "#initialize" do
    it "takes five from the deck" do
      expect(hand.cards_in_hand.count).to eq(5)
    end
  end

  describe "#get_ranking" do
    it "returns the rank for the hand" do
      expect(hand.get_ranking.class).to eq(Integer)
    end

    # it "returns 1 for straight flush" do
    #   Card.new("Ace", :A, "spade", "black")
    #   hand.cards_in_hand = []
    # end
  end

  end





end
