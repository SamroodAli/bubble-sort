# frozen_string_literal: true

# bubble sort for strings

def bubble_sort_words(arr)
  sorted = false
  until sorted
    sorted = loop_words(arr) do |left, right|
      left.length - right.length
    end
  end
  arr
end

def loop_words(arr)
  is_sorted = true
  (0...arr.length - 1).each do |i|
    if (yield arr[i], arr[i + 1]).to_i >= 0
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      is_sorted = false
    end
  end
  is_sorted
end

# bubble sort for integers
def bubble_sort(arr)
  sorted = false
  sorted = loop_integers(arr) until sorted
  arr
end

def loop_integers(arr)
  is_sorted = true
  (0...arr.length - 1).each do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      is_sorted = false
    end
  end
  is_sorted
end

# test
p bubble_sort_words(['hi', 'hello', 'hello world', 'a'])
p bubble_sort([1, 6, 3, 7, 9])
