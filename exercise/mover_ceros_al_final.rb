def move_zeros(arr)
  arr.partition { |num| num != 0 }.flatten
end

puts move_zeros([0, 1, 0, 3, 12]).inspect  # => [1, 3, 12, 0, 0]
