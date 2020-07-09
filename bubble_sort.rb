def bubble_sort arr
  n = arr.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

p bubble_sort [1, 4, 2, 5, 7, 8, -1, 3, 6, 9, 0]