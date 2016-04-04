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

    bubble = benchmark.time(SortingSuite::BubbleSort, [3, 3, 4, 5, 1])
    insert = benchmark.time(SortingSuite::InsertionSort, [3, 3, 4, 5, 1])
    merge = benchmark.time(SortingSuite::MergeSort, [3, 3, 4, 5, 1])

    assert bubble
    assert insert
    assert merge
  end

  def test_benchmark_time_no_array
    benchmark = SortingSuite::Benchmark.new

    merge = benchmark.time(SortingSuite::MergeSort)

    assert merge
  end

  def test_benchmark_fastest
    benchmark = SortingSuite::Benchmark.new

    fastest = benchmark.fastest([2, 8, 1, 0, 5])

    assert fastest
  end

  def test_benchmark_fastest
    benchmark = SortingSuite::Benchmark.new

    slowest = benchmark.slowest([1, 2, 3, 4, 5])

    assert slowest
  end
end
