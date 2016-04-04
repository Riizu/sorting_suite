require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_merge_sort_exists
    sorter = MergeSort.new

    assert sorter
  end

  def test_merge_sort_base_case
    sorter = MergeSort.new

    base_case = sorter.sort([1])

    assert_equal [1], base_case
  end

  def test_merge_sort_sub_problem
    sorter = MergeSort.new

    sub_problem = sorter.sort([1,0])

    assert_equal [0,1], sub_problem
  end

  def test_merge_sort_expected
    sorter = MergeSort.new

    sorted = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_merge_sort_worst_case
    sorter = MergeSort.new

    sorted = sorter.sort(["d", "c", "b", "a"])

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_merge_sort_odd_length
    sorter = MergeSort.new

    sorted = sorter.sort(["a","c","b"])

    assert_equal ["a","b","c"], sorted
  end
end
