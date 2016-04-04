require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sorting_suite'

class BenchmarkTest < MiniTest::Test
  def test_benchmark_exists
    benchmark = SortingSuite::Benchmark.new

    assert benchmark
  end

  def test_benchmark_time
    benchmark = SortingSuite::Benchmark.new

    bubble = benchmark.time(SortingSuite::BubbleSort, [3,3,4,5,1])
    insert = benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
    merge = benchmark.time(SortingSuite::MergeSort, [3,3,4,5,1])

    assert bubble
    assert insert
    assert merge
  end
end
