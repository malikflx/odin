# Task

# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# For each element in the list, look at the element and the element directly to the right of it. If the right element is smaller than the left, swap places.

array = [4,3,78,2,0,2]

def bubble_sort(array)
  array_length = array.length
  swapped = true

  while swapped
    swapped = false
    (array_length - 1).times do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num + 1], array[num]
        swapped = true
      end
    end
  end
  array
end

p bubble_sort(array)