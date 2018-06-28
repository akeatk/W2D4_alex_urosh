def string_permutation(string)
  return [string] if string.length <=1
  
  arr = string.chars
  result = []
  i = 0
  while i < arr.length
    single = arr[i]
    sub_str = first_anagram((arr - [single]).join)
    sub_str.each do |str|
      result << single + str
    end
    i += 1
  end
  result
end

def first_anagram?(str1, str2)
  string_permutation(str1).include? str2
end

def second_anagram?(str1, str2)
  arr1 = str1.chars 
  arr2 = str2.chars 
  arr1.each_with_index do |char1, i1|
    arr2.each_with_index do |char2, i2|
      if char1 == char2
        char1 = arr1[i1] = arr2[i2] = nil 
      end 
    end
  end 
  arr1.compact.join == arr2.compact.join
end

def third_anagram?(str1, str2)
  arr1 = str1.chars.sort
  arr2 = str2.chars.sort
  arr1 == arr2
end

def fourth_anagram?(str1, str2)
  hash = Hash.new(0)
  arr1 = str1.chars 
  arr2 = str2.chars 
  
  arr1.each do |char|
    hash[char] += 1
  end
  arr2.each do |char|
    hash[char] -= 1
  end
  
  hash.values.all?{|val| val == 0}
end

p fourth_anagram?("elvis", "lives")
p fourth_anagram?("elvis", "livese")
p fourth_anagram?("gizmoj", "sally")