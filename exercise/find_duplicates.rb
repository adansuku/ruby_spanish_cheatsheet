def find_duplicates(arr)
  arr.group_by { |e| e }.select { |k, v| v.size > 1 }.keys
end

puts find_duplicates([1, 2, 3, 4, 2, 5, 3])  # => [2, 3]



# Calulate total
def calculate_total(items)
  total = 0
  items.each do |item|
    total += item[:price] * item[:quantity]
  end
  return total
end

puts calculate_total([{price: 10, quantity: 2}, {price: 5, quantity: 3}])
