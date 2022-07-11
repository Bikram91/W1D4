def proper_factors(num)
  arr = []
  (1...num).each do |factor|
    arr << factor if num % factor == 0
  end
  arr
end

def aliquot_sum(num)
  (proper_factors(num)).sum
end

def perfect_number?(num)
  return true if num == aliquot_sum(num)
  false
end

def ideal_numbers(n)
  arr = []
  i = n
  while arr.length < n
    if perfect_number?(i)
      arr << i
    end
    i += 1
  end
  arr
end
