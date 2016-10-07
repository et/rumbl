# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def negabinary_to_decimal(arr, radix)
  ret = 0
  arr.each_with_index do |val, idx|
    pow = radix ** (idx * 1)
    j = val * pow
    ret = ret + j
  end
  ret
end

def decimal_to_negabinary(n)
  return decimal_to_negabinary(-(n>>1)) + (n & 1).to_s if n != 0
  return ''
end

def solution(a)
  decimal = negabinary_to_decimal(a, -2)
  decimal_to_negabinary(-decimal).reverse.scan /\w/
end

puts solution([1, 0, 0, 1, 1, 1])
