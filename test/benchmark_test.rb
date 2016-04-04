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

    result = benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])

    assert_equal "InsertionSort took 0.004333 seconds", result
  end
end
