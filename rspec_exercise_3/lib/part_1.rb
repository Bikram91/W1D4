def is_prime?(number)
  if number < 2
    return false
  end

  (2...number).each do |factor|
    return false if number % factor == 0
  end
  true
end

def nth_prime(n)
  arr = []
  i = 2
  while arr.length < n
    if is_prime?(i)
      arr << i
    end
    i += 1
  end
  arr[-1]
end

def prime_range(num1, num2)
  arr = []
  (num1...num2+1).each do |factor|
    if is_prime?(factor)
      arr << factor
    end
  end
  arr
end
