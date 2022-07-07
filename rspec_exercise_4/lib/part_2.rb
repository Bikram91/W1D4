def proper_factors(num)
    arr = []
    (1...num).each do |factor|
        if num % factor == 0
            arr << factor
        end
    end
    arr
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    if aliquot_sum(num) == num
        return true
    else
        return false
    end
end

def ideal_numbers(num)
    i = 3
    arr = []
    while arr.length < num
        if perfect_number?(i)
            arr << i
        end
      i+=1
    end
        arr
    end