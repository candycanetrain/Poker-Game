require "rspec"
require "tdd"

describe Array do
  let(:arr) {[1,2,3,4,4,5,3]}

  describe "#my_uniq" do
    it "returns a unique array" do
      expect(arr.my_uniq).to eq([1,2,3,4,5])
    end

    it "returns an empty when called on empty array" do
      expect([].my_uniq).to eq([])
    end

    it "returns self if self is already unique" do
      expect([1,2,3].my_uniq).to eq([1,2,3])
    end    
  end

end
