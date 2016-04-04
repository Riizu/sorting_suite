module SortingSuite
  class Benchmark

    def time(sorting_type, array=[3,3,4,5,1])
      sorter = sorting_type.new
      t1 = Time.now.to_f * 1000
      result = sorter.sort(array)
      t2 = Time.now.to_f * 1000
      return_correct_result(sorting_type, t1, t2)
    end

    def get_time(sorting_type, array)
      sorter = sorting_type.new
      t1 = Time.now.to_f * 1000
      result = sorter.sort(array)
      t2 = Time.now.to_f * 1000
      (t2-t1).round(6)
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

    def fastest(array)
      bubbleTime = get_time(SortingSuite::BubbleSort, array)
      insertTime = get_time(SortingSuite::InsertionSort, array)
      mergeTime = get_time(SortingSuite::MergeSort, array)
      fastest = [bubbleTime, insertTime, mergeTime].min
      if fastest == bubbleTime
        "BubbleSort is the fastest"
      elsif fastest == insertTime
        "InsertionSort is the fastest"
      elsif fastest == mergeTime
        "MergeSort is the fastest"
      end
    end

    def slowest(array)
      bubbleTime = get_time(SortingSuite::BubbleSort, array)
      insertTime = get_time(SortingSuite::InsertionSort, array)
      mergeTime = get_time(SortingSuite::MergeSort, array)
      slowest = [bubbleTime, insertTime, mergeTime].max
      if slowest == bubbleTime
        "BubbleSort is the slowest"
      elsif slowest == insertTime
        "InsertionSort is the slowest"
      elsif slowest == mergeTime
        "MergeSort is the slowest"
      end
    end
  end
end
