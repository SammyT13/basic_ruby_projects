def bubble_sort(arr)
  arr_length = arr.length
  n = arr_length - 1
  swapped = true

  while swapped do
    swapped = false
    n.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
p arr
end


bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort([])
bubble_sort([5])
bubble_sort([99, 8, 75, 76, -2, 0, 6, 3, 2, 1])
