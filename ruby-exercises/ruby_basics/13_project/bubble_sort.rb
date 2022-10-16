=begin
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
=end


def bubble_sort(array)  
  return array if array.size <= 1
  
  loop do   
    swapped = false
      (array.size-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end

      break if not swapped
  end
  return array
end


array = [4,3,78,2,0,2]
p bubble_sort(array)