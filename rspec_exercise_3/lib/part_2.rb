def element_count(arr)
  count = Hash.new(0)
  arr.each do |word|
    count[word] += 1
  end
  count
end

def char_replace!(str, hash)
  str.each_char.with_index do |char, i|
    if hash.has_key?(char)
      str[i] = hash[char]
    end
  end
  str
end

def product_inject(arr)
    arr.inject {|acc, ele| acc * ele}
end
