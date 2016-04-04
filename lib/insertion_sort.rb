module SortingSuite
  class InsertionSort

    def sort(array)
      sorted_array = [array.shift]

      while !array.empty?
        value_to_sort = array.shift
        sorted_array = insert_value(value_to_sort, sorted_array)
      end
      sorted_array
    end

    def insert_value(value_to_sort, sorted_array)
      sorted_array.length.times do |i|
        if value_to_sort < sorted_array[i]
          sorted_array.insert(i, value_to_sort)
          break
        elsif sorted_array[i+1].nil?
          sorted_array << value_to_sort
        end
      end
      return sorted_array
    end

    def inplace_sort(array)
      (1..(array.length - 1)).each do |index|
        (0..(index - 1)).each do |current_value|
          if array[current_value] >= array[index]
            array.insert(current_value, array[index])
            array.delete_at(index + 1)
          end
        end
      end
      return array
    end

  end
end
