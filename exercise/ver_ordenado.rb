def sorted?(arr)
  arr == arr.sort
end

puts sorted?([1, 2, 3, 4])  # => true
puts sorted?([3, 1, 2])     # => false
