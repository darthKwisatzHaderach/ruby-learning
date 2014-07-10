require_relative '../1.3.rb'
require 'test/unit'

class TestCalculate < Test::Unit::TestCase
  def test_0  	
  	assert_equal(0, calculate([0,0,0]))
  end
  def test_1
  	assert_equal(1, calculate([1,1,1]))
  end
  def test_2
  	assert_equal(2, calculate([2]))
  	assert_equal(2, calculate([2,2]))
  	assert_equal(2, calculate([2,2,2]))
  	assert_equal(2, calculate([2,2,2,2]))
  	assert_equal(2, calculate([2,2,2,2,2]))
  end
  def test_3
  	assert_equal(3, calculate([3]))
  	assert_equal(3, calculate([3,3]))
  	assert_equal(3, calculate([3,3,3]))
  end
  def test_4
  	assert_equal(4, calculate([4,4,4]))
  end
  def test_5
  	assert_equal(5, calculate([5,5,5]))
  end
  def test_6
  	assert_equal(6, calculate([6,6,6]))
  end
  def test_7
  	assert_equal(7, calculate([7,7,7]))
  end
  def test_8
  	assert_equal(8, calculate([8,8,8]))
  end
  def test_9
  	assert_equal(9, calculate([9,9,9]))
  end  
end
