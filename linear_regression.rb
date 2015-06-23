class RegressionLine

  attr_reader :result

  def initialize(x_array, y_array)
    @x = x_array
    @y = y_array
    @n = x_array.length
    @result = [find_a, find_b]
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

  def sum_xy
    @x.each_with_index.map {|e, index| e * @y[index]}.reduce(:+)
  end

  def sum_x_all_squared
    sum_x * sum_x
  end

  def find_a
    numerator = ( ( sum_x_squared * sum_y ) - ( sum_x * sum_xy ) ).to_f
    denominator = ( ( @n * sum_x_squared ) - sum_x_all_squared ).to_f
    (numerator / denominator ).round(4)
  end

  def find_b
    numerator = ( ( @n * sum_xy ) - ( sum_x * sum_y ) ).to_f
    denominator = ( ( @n * sum_x_squared ) - sum_x_all_squared ).to_f
    (numerator / denominator ).round(4)
  end

  def to_s
    p result
  end

end
