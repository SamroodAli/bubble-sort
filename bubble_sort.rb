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
<<<<<<< HEAD
    break unless sorted
=======
    arr
  else
    p 'Please give a block when invoking bubble_sort_words function'
>>>>>>> 9353ca0 (readme:include bubble sort info and image, improve setting up)
  end
  arr
end

def bubble_sort_by(arr)
  bubble_sort_words(arr) { |left, right| left.length <=> right.length }
end
