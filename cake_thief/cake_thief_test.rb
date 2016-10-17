require "minitest/autorun"
require "minitest/pride"
require_relative 'cake_thief'

class CakeThiefTest < Minitest::Test
  def test_it_can_calculate_correct_trivial_case
    skip
    cake_types = [ [2, 30] ]
    capacity = 10
    assert_equal 150, max_duffel_bag_value(cake_types, capacity)
  end

  def test_it_can_calculate_correct_max_with_two_cake_types
    skip
    cake_types = [ [2, 30], [1, 60]]
    capacity = 90
    assert_equal 5400, max_duffel_bag_value(cake_types, capacity)
  end

  def test_it_returns_the_max_value_that_can_fit_in_the_bag
    cake_arrays = [ [7, 160], [3, 90], [2, 15] ]
    capacity = 20
    assert_equal 555, max_duffel_bag_value(cake_arrays, capacity)
  end
end
