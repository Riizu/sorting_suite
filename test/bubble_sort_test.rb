require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_suite'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort_exists
    sorter = SortingSuite::BubbleSort.new

    assert sorter
  end

  def test_bubble_sort_base_case
    sorter = SortingSuite::BubbleSort.new

    base_case = sorter.sort([1])

    assert_equal [1], base_case
  end

  def test_bubble_sort_sub_problem
    sorter = SortingSuite::BubbleSort.new

    sub_problem = sorter.sort([1, 0])

    assert_equal [0, 1], sub_problem
  end

  def test_bubble_sort_sorted
    sorter = SortingSuite::BubbleSort.new

    sorted_array = sorter.sort(["a", "b", "c", "d"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end

  def test_bubble_sort_expected
    sorter = SortingSuite::BubbleSort.new

    sorted_array = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end

  def test_bubble_sort_worst_case
    sorter = SortingSuite::BubbleSort.new

    sorted = sorter.sort(["d", "c", "b", "a"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_bubble_sort_odd_length
    sorter = SortingSuite::BubbleSort.new

    sorted = sorter.sort(["a", "c", "b"])

    assert_equal ["a", "b", "c"], sorted
  end
end
