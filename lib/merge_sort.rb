module SortingSuite
  class MergeSort

    def sort(array)
      if array.length <= 1
        array
      else
        mid = ((array.length) / 2).floor
        left = sort(array[0..mid - 1])
        right = sort(array[mid..array.length])
        merge(left, right)
      end
    end

    def merge(left, right)
      if left.empty?
        right
      elsif right.empty?
        left
      elsif left.first < right.first
        [left.first] + merge(left[1..left.length], right)
      else
        [right.first] + merge(left, right[1..right.length])
      end
    end

  end
end
