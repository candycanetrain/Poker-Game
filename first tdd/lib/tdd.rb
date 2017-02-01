require "byebug"

class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    self.each_with_index do |el, i|
      raise "Contents are not numbers." unless el.is_a?(Integer)
      ((i+1)...self.length).each do |j|
        result << [i,j] if el+self[j] == 0
      end
    end
    result
  end

  def my_transpose
    result = []
    (0...self.length).each do |i|
      subarray = []
      (0...self.length).each do |j|
        subarray << self[j][i]
      end
      result << subarray
    end
    result
  end

end

def stock_picker(stock_prices)
  profit = 0
  result = []
  stock_prices.each_with_index do |buy, i|
    stock_prices.each_with_index do |sell, j|
      if i < j
        temp_profit = sell - buy
        if temp_profit > profit
          profit = temp_profit
          result = [i,j]
        end
      end
    end
  end

  result

end

class TowersofHanoi
  attr_reader :towers
  def initialize
    @towers = [[3,2,1],[],[]]
  end

  def move(start, last)
    if @towers[start].empty?
      return nil
    elsif @towers[last].empty? && @towers[start].count > 0
      @towers[last] << @towers[start].pop
    elsif @towers[start].last > @towers[last].last
      raise "Not valid move"
    end
  end


  def won?
    @towers[1].count == 3 || @towers[2].count == 3
  end
end
