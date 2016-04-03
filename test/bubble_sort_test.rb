require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test
  def test_bubble_sort_exists
    sorter = BubbleSort.new

    assert sorter
  end

  def test_bubble_sort_sorted
    sorter = BubbleSort.new

    sorted_array = sorter.sort(["a", "b", "c", "d"])

    assert_equal ["a","b","c","d"], sorted_array
  end

  def test_bubble_sort_expected
    sorter = BubbleSort.new

    sorted_array = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end
end
