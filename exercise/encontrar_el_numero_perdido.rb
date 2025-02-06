def missing_number(arr, n)
  expected_sum = (n * (n + 1)) / 2
  actual_sum = arr.sum
  expected_sum - actual_sum
end

puts missing_number([1, 2, 3, 5], 5)  # => 4
