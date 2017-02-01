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
