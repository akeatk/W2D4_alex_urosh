def first_anagram(string)
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

def anagram?(str1, str2)
  first_anagram(str1).include? str2
end

p anagram?("elvis", "lives")
p anagram?("gizmo", "sally")