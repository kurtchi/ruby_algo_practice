
sorted = [1, 6, 9, 13, 28, 70, 89, 121, 689]


# return index of target using binary search 
def binary_search(array, target, min=0, max=array.size-1)  
  return -1 if min > max  
  mid = (min + max) / 2  
  return mid if array[mid]==target  
  if array[mid] > target  
    max = mid - 1  
  else  
    min = mid + 1  
  end  
  binary_search array, target, min, max 
end 


puts "sorted array: #{sorted}"
found = binary_search sorted,28
puts "found 28 at index: #{found}"