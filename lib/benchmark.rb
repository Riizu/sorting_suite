module SortingSuite
  class Benchmark

    def time(sorting_type, array)
      sorter = sorting_type.new
      t1 = Time.now.to_f * 1000
      result = sorter.sort(array)
      t2 = Time.now.to_f * 1000
      return_correct_result(sorting_type, t1, t2)
    end

    def return_correct_result (sorting_type, t1, t2)
      if sorting_type == SortingSuite::BubbleSort
        "BubbleSort took #{(t2-t1).round(6)} seconds."
      elsif sorting_type == SortingSuite::InsertionSort
        "InsertionSort took #{(t2-t1).round(6)} seconds."
      elsif sorting_type == SortingSuite::MergeSort
        "MergeSort took #{(t2-t1).round(6)} seconds."
      end
    end

  end
end
