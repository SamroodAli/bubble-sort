def bubble_sort_words(arr)
 sorted = false
  while !sorted
    sorted=true
    (0...arr.length-1).each do |i|
      if (yield arr[i], arr[i + 1]).to_i >= 0
        arr[i],arr[i+1] = arr[i+1],arr[i]
        sorted=false
      end
    end
  end
  print arr
  return arr
end
bubble_sort_words(["hi","hello","hello world","a"]) do |left,right|
    left.length - right.length
end