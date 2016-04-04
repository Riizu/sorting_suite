require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_insertion_sort_exists
    sorter = InsertionSort.new

    assert sorter
  end

  def test_insertion_sort_base_case
    sorter = InsertionSort.new

    base_case = sorter.sort([1])

    assert_equal [1], base_case
  end

  def test_insertion_sort_sub_problem
    sorter = InsertionSort.new

    sub_problem = sorter.sort([1,0])

    assert_equal [0,1], sub_problem
  end

  def test_insertion_sort_expected
    sorter = InsertionSort.new

    sorted = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_insertion_sort_sorted
    sorter = InsertionSort.new

    sorted_array = sorter.sort(["a", "b", "c", "d"])

    assert_equal ["a","b","c","d"], sorted_array
  end

  def test_insertion_sort_worst_case
    sorter = InsertionSort.new

    sorted = sorter.sort(["d", "c", "b", "a"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_insertion_sort_odd_length
    sorter = InsertionSort.new

    sorted = sorter.sort(["a","c","b"])

    assert_equal ["a","b","c"], sorted
  end
end
