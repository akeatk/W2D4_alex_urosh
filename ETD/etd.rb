def my_min(arr)
  arr.each do |el|
    return el if (arr - [el]).all? { |el2| el2 > el }
  end

end


def my_min(arr)
  min = arr[0]
  (1...arr.length).each { |i| min = arr[i] if arr[i] < min }
  min 
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5
# 
# def largest_contiguous_subsum(list)
#   sub_arr = [] 
#   i = 0
#   while i < list.length
#     j = i 
#     while j < list.length
#       sub_arr << list[i..j]
#       j += 1
#     end
#     i += 1
#   end
#   max = sub_arr[0].reduce(:+)
# 
#   sub_arr.each do |arr|
#     max = arr.reduce(:+) if arr.reduce(:+) > max
#   end
# 
#   max
# end 

def largest_contiguous_subsum(list)
  current = final = list[0]
  i = 1
  while i < list.length
    current += list[i]
    current = list[i] if list[i] > current
    final = current if current > final
    i += 1
  end
  final
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
list = [1, 0, 5, -4, 8, 9, -8, -3, 1, 2]
p largest_contiguous_subsum(list) # => -1 (from [-1])
list = [2,-7,5,-1,3,-6,2]
p largest_contiguous_subsum(list) # => -1 (from [-1])