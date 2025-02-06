def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end

puts digital_root(9875)  # => 2  (9+8+7+5 = 29 -> 2+9 = 11 -> 1+1 = 2)
