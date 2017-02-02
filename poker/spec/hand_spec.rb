require "rspec"
require "hand"
require "deck"

describe "Hand" do

  subject(:hand) {Hand.new(deck)}
  let(:deck) {Deck.new()}

  describe "#initialize" do
    it "takes five from the deck" do
      expect(hand.cards_in_hand.count).to eq(5)
    end
  end





end
