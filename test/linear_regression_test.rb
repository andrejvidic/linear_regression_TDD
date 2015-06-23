require '../linear_regression.rb'
require 'minitest/autorun'

#  optional pretty output that reads like a specificication
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRegressionLine < Minitest::Test

  def setup
    @reg_1 = RegressionLine.new([25,30,35,40,45,50],[78,70,65,58,48,42])
    @reg_2 = RegressionLine.new([56,42,72,36,63,47,55,49,38,42,68,60], [147,125,160,118,149,128,150,145,115,140,152,155])
  end

  def test_sum_x_squared
  	assert_equal @reg_1.sum_x_squared, 8875
  end

  def test_sum_y
  	assert_equal @reg_1.sum_y, 361
  end

end
