def my_reject(arr, &prc)
    new_arr = []
    arr.each do |ele|
        if !(prc.call(ele))
            new_arr << ele
        end
    end
    new_arr
end

def my_one?(arr, &prc)
    new_arr = []
    arr.each do |ele|
        if prc.call(ele)
            new_arr << ele
        end
    end
    return true if new_arr.length == 1
    return false
end

def hash_select(hash, &prc)
    new_hash = {}
    hash.each do |k,v|
        if prc.call(k,v)
            new_hash[k] = v
        end
    end
    new_hash
end

def xor_select(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if (!(prc1.call(ele)) || !(prc2.call(ele))) && ((prc1.call(ele)) || (prc2.call(ele)))
            new_arr << ele
        end
    end
    new_arr
end

def proc_count(num, arr)
    count = 0
    arr.each do |prc|
        if prc.call(num)
            count +=1
        end
    end
    count
end