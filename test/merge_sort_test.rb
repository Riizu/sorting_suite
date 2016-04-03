require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_merge_sort_exists
    sorter = MergeSort.new

    assert sorter
  end

  def test_merge_sort_expected
    sorter = MergeSort.new

    sorted = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted
  end
end
