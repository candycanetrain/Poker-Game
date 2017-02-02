HASH = {
  :A => "Ace",
  :K => "King",
  :Q => "Queen",
  :J => "Jack",
  :"10" => "Ten",
  :"9" => "Nine",
  :"8" => "Eight",
  :"7" => "Seven",
  :"6" => "Six",
  :"5" => "Five",
  :"4" => "Four",
  :"3" => "Three",
  :"2" => "Two"
}

require_relative "card"

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    populate
  end



  def shuffle
    @cards.shuffle

  end

  private
  def populate
    HASH.each do |symbol, name|
      @cards << Card.new(name, symbol, "spade", "black")
      @cards << Card.new(name, symbol, "clover", "black")
      @cards << Card.new(name, symbol, "hearts", "red")
      @cards << Card.new(name, symbol, "diamond", "red")
    end
  end
end
