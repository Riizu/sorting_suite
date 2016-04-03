require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_insertion_sort_exists
    sorter = InsertionSort.new

    assert sorter
  end

  def test_sort
    sorter = InsertionSort.new

    sorted = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorted
  end
end
