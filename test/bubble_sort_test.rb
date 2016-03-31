require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort_exists
    sorter = BubbleSort.new

    assert sorter
  end

  def test_swap_two_values
    sorter = BubbleSort.new

    swapped_values1 = sorter.swap(["b", "a"])
    swapped_values2 = sorter.swap(["a", "b"])

    assert_equal ["a", "b"], swapped_values1
    assert_equal ["a", "b"], swapped_values2
  end

  def test_invalid_swaps
    sorter = BubbleSort.new

    swapped_value1 = sorter.swap(nil)
    swapped_value2 = sorter.swap([0])
    swapped_value3 = sorter.swap([0, 1, 2])

    assert_equal nil, swapped_value1
    assert_equal nil, swapped_value2
    assert_equal nil, swapped_value3
  end

  def test_bubble_sort_expected
    sorter = BubbleSort.new

    sorted_array = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end
end
