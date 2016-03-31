require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort_exists
    sorter = BubbleSort.new

    assert sorter
  end

  def test_bubble_sort_expected
    sorter = BubbleSort.new

    sorted_array = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end
end
