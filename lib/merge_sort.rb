class MergeSort
  def sort(array)
    #recursively split the left side and sort at lowest
    left_array = split_left(array)
    #recursively split the right side and merge at lowest
    right_array = split_right(array)
    #merge both halves
    merge(left_array, right_array)

    return array
  end

  def split_left(array)

  end

  def split_right(array)

  end

  def merge(left_array, right_array)

  end
end
