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
