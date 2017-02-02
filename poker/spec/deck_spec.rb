require "rspec"
require "deck"

describe "Deck" do

  subject(:deck) {Deck.new()}
  describe "#initialize" do

    # it "calls populate method" do
    #   allow_any_instance_of(Deck).to receive(:populate).at_least(:once)
    #   Deck.new
    # end

    it "creates a deck of 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "creates 52 unique cards" do
      expect(deck.cards.uniq.count).to eq(52)
    end

  end
  describe "#shuffle" do

    it "shuffles the cards in the deck and return cards in new positions" do
     expect(deck.cards).not_to eq(deck.cards.shuffle)
   end

  end


  describe "#take_five" do
    it "returns five cards" do
      expect(deck.take_five.count).to eq(5)
    end

    it "updates the deck" do
      deck.take_five
      expect(deck.cards.count).to eq(47)
    end
  end


end
