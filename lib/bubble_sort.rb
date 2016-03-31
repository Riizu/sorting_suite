class BubbleSort

  def sort(array)
    swap_counter = 0

    while(swap_counter >= 0)

      (array.length - 1).times do |current|
        if array[current] > array[current+1]
          array[current], array[current+1] = array[current+1], array[current]
          swap_counter += 1
        else
          swap_counter -= 1
        end
      end
    end
    array
  end

end
