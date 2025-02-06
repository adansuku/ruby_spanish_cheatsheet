def most_frequent(arr)
  arr.tally.max_by { |_, v| v }[0]
end

puts most_frequent([1, 3, 2, 3, 4, 3, 5])  # => 3
