def two_sum?(arr, target)
  (arr.length - 1).times do |start|
    (start + 1...arr.length).each do |finito|
      return true if arr[start] + arr[finito] == target 
    end
  end
  false
end


def okay_two_sum?(arr, target)
  sorted = arr.sort 
  start = 0 
  finito = arr.length - 1 
  while start < finito 
    if sorted[start] + sorted[finito] > target 
      finito -= 1
    elsif sorted[start] + sorted[finito] < target 
      start += 1 
    else 
      return true
    end 
  end
  false
end

def good_two_sum?(arr, target)
  hash = Hash.new(false)
  
  arr.each do |el|
    return true if hash[target - el]
    hash[el] = true
  end
  false
end
arr = [0, 1, 5, 7]
p good_two_sum?(arr, 6) # => should be true
p good_two_sum?(arr, 10) # => should be false
