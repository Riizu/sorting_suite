class BubbleSort
  def intitalize
    @previous
    @current
  end

  def swap(array_to_swap)
    return nil if array_to_swap.nil?
    return nil if array_to_swap.length < 2 || array_to_swap.length > 2

    if array_to_swap[0] > array_to_swap[1]
      return [array_to_swap[1],array_to_swap[0]]
    else
      return array_to_swap
    end
  end
end
