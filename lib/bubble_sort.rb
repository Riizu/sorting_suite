class BubbleSort

  def sort(array)
    if array.length <= 1
      array
    else
      swap_counter = 0
      while(swap_counter >= 0)
        (array.length - 1).times do |current|
          if array[current] > array[current+1]
            swap(array, current, current+1)
            swap_counter += 1
          else
            swap_counter -= 1
          end
        end
      end
      array
    end
  end

  def swap(array,current, next_value)
    array[current], array[next_value] = array[next_value], array[current]
  end

end
