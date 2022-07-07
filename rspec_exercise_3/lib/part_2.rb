def element_count(arr)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele]+=1
    end
    hash
end

def char_replace!(str, hash1)
    str.each_char.with_index do |char, i|
        if hash1.has_key?(char)
           str[i] = hash1[char]
        end
    end
    str
end

def product_inject(arr)
    arr.inject {|acc,ele| acc * ele}
end