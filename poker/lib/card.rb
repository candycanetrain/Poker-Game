class Card
  attr_reader :name, :symbol, :suit, :color

  def initialize(name, symbol, suit, color)
    @name = name
    @symbol = symbol
    @suit = suit
    @color = color
  end
end
