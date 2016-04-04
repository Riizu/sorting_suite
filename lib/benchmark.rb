module SortingSuite
  class Benchmark

    def time(sorting_type, array)
      if(sorting_type == SortingSuite::InsertionSort)
        sorter = SortingSuite::InsertionSort.new
        t1 = Time.now.to_f * 1000
        result = sorter.sort(array)
        t2 = Time.now.to_f * 1000
        return "InsertionSort took #{(t2-t1).round(6)} seconds"
      end
    end
  end
end
