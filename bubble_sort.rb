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
  if block_given?
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
    p arr
    arr
  else
    p 'Please give a block when invoking bubble_sort_words function'
  end
end

# test
bubble_sort_words(['hi', 'hello', 'hello world', 'a']) do |left, right|
  left.length - right.length
end
p bubble_sort([1, 6, 3, 7, 9])
