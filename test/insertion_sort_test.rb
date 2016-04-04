require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_suite'

class InsertionSortTest < Minitest::Test
  def test_insertion_sort_exists
    sorter = SortingSuite::InsertionSort.new

    assert sorter
  end

  def test_insertion_sort_base_case
    sorter = SortingSuite::InsertionSort.new

    base_case = sorter.sort([1])

    assert_equal [1], base_case
  end

  def test_insertion_sort_sub_problem
    sorter = SortingSuite::InsertionSort.new

    sub_problem = sorter.sort([1, 0])

    assert_equal [0, 1], sub_problem
  end

  def test_insertion_sort_expected
    sorter = SortingSuite::InsertionSort.new

    sorted = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_insertion_sort_sorted
    sorter = SortingSuite::InsertionSort.new

    sorted_array = sorter.sort(["a", "b", "c", "d"])

    assert_equal ["a", "b", "c", "d"], sorted_array
  end

  def test_insertion_sort_worst_case
    sorter = SortingSuite::InsertionSort.new

    sorted = sorter.sort(["d", "c", "b", "a"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_insertion_sort_odd_length
    sorter = SortingSuite::InsertionSort.new

    sorted = sorter.sort(["a", "c", "b"])

    assert_equal ["a", "b", "c"], sorted
  end

  def test_insertion_inplace_sort
    array = [4, 0, 2, 3, 1]

    first_sorted = SortingSuite::InsertionSort.new([3, 2, 1]).inplace_sort
    second_sorted = SortingSuite::InsertionSort.new(array).inplace_sort
    matches = SortingSuite::InsertionSort.new(array).inplace_sort.object_id == array.object_id

    assert_equal [1, 2, 3], first_sorted
    assert_equal [0, 1, 2, 3, 4], second_sorted
    assert matches
  end
end
