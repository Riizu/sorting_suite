module SortingSuite
  class BubbleSort

    def sort(array)
      return array if array.length <= 1

      swapped = true
      while swapped
        swapped = false
        (array.length - 1).times do |current|
          if array[current] > array[current + 1]
            swap(array, current, current + 1)
            swapped = true
          end
        end
      end
      array
    end

    def swap(array, current, next_value)
      array[current], array[next_value] = array[next_value], array[current]
    end

  end
end
