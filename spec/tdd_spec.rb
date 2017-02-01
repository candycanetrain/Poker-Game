require "rspec"
require "tdd"



describe Array do
  describe "#my_uniq" do
    it "returns a unique array" do
      expect([1,2,3,4,4,5,3].my_uniq).to eq([1,2,3,4,5])
    end

    it "returns an empty when called on empty array" do
      expect([].my_uniq).to eq([])
    end

    it "returns copy if self is already unique" do
      expect([1,2,3].my_uniq).to eq([1,2,3])
    end
    it "returns a new array; not self" do
      expect([1,2,3].my_uniq).not_to be([1,2,3])
    end

  end


  describe "#two_sum" do
    it "returns a blank array if self is empty" do
      expect([].two_sum).to eq([])
    end

    it "returns an array of pair of indices where the elements add up to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns a blank array if no pairs add up to zero" do
      expect([1,2,3,4].two_sum).to eq([])
    end

    it "raises error when contents are not numbers" do
      expect{["words", "hello", "ruby"].two_sum}.to raise_error("Contents are not numbers.")
    end
  end

  describe "#my_transpose" do
      let(:rows) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}
      let(:cols) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}
    it "transposes rows and columns" do
      expect(rows.my_transpose).to eq(cols)
    end
  end

end

describe "Stock Picker" do
  it "returns most profitable pair of days" do
    expect(stock_picker([4,5,1,7,4,6,9])).to eq([2,6])
  end

  it "returns empty array if no profitable pairs" do
    expect(stock_picker([6,5,4,3,2,1])).to eq([])
  end

  it "returns empty array if no profitable pairs" do
    expect(stock_picker([4,4,4,4])).to eq([])
  end

  it "returns first pair of profitable days if there are two equal pairs" do
    expect(stock_picker([1,9,4,5,1,2,9])).to eq([0,1])
  end
end

describe "Towers of Hanoi" do

  subject(:game) {TowersofHanoi.new()}
  describe "#initialization" do

    it "creates three towers in array" do
      expect(game.towers).to eq([[3,2,1],[],[]])
    end
  end

  describe "#move" do
    it "takes in two positions as arguments" do
      expect{game.move(0,2)}.not_to raise_error(ArgumentError)
    end

    it "doesn't let you move a bigger disc to a smaller disc" do
      game.move(0,1)
      expect{game.move(0,1)}.to raise_error("Not valid move")
    end
    it "moves a disc from a tower to another tower" do
      game.move(0,1)
      expect(game.towers).to eq([[3,2],[1],[]])
    end
  end


  describe "#won?" do
    let(:towers) {[[],[3,2,1],[]]}

    it "returns true when all discs are moved to tower2 or tower3" do
      game.towers[0] = []
      game.towers[2] = [3,2,1]
      expect(game.won?).to eq(true)
    end

    it "returns false if all discs are not in one tower" do
      expect(game.won?).to eq(false)
    end
  end
end
