class RegressionLine

  def initialize(x_array, y_array)
    @x = x_array
    @y = y_array
    @n = x_array.length
  end

  def sum_x_squared
    @x.map {|e| e*e }.reduce(:+)
  end

  def sum_y
    @y.reduce {|sum , e| sum + e}
  end

  def sum_x
    @x.reduce {|sum , e| sum + e}
  end
end
