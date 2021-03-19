# bubble sort for integers
def bubble_sort(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end

# bubble sort for strings
def bubble_sort_words(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end