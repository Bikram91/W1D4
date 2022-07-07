def is_prime?(num)
    if num < 2
        return false
    end

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
        true
end


def prime_range(num1,num2)
    arr = []
    (num1..num2).each do |num3|
        arr << num3 if is_prime?(num3)
    end
    arr
end

def nth_prime(num4)
    arr = []
     i = 2
    while arr.length < num4
        if is_prime?(i)
            arr << i     
        end  
        i+=1   
    end
    arr[-1]
end