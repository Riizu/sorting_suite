class InsertionSort

  def sort(array)
    sorted_array = [array.shift]

    while !array.empty?
      value_to_sort = array.shift
      sorted_array = insert_value(value_to_sort,sorted_array)
    end
    sorted_array
  end

  def insert_value(value_to_sort,sorted_array)
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


end
