require 'rspec'
require 'card'

describe "Card" do
  subject(:card) {Card.new("Ace of Hearts", :A, "Hearts", "red")}
  describe "#initialization" do
    it "assigns a name to the card" do
      expect(card.name).to eq("Ace of Hearts")
    end

    it "assigns a symbol to the card" do
      expect(card.symbol).to eq(:A)
    end

    it "assigns a suit to the card" do
      expect(card.suit).to eq("Hearts")
    end

    it "assigns a color to the card" do
      expect(card.color).to eq("red")
    end
  end



end
