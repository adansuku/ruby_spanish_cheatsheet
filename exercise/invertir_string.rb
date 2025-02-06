def reverse_string(str)
  reversed = ""
  str.chars.each { |char| reversed = char + reversed }
  reversed
end

puts reverse_string("hello")  # => "olleh"

# Palindromo
def palindrome?(str)
  str.downcase == str.downcase.reverse
end

puts palindrome?("radar")   # => true
puts palindrome?("hello")   # => false


# Fizbuzz
def fizzbuzz(n)
  (1..n).each do |i|
    puts "FizzBuzz" if i % 15 == 0
    puts "Fizz" if i % 3 == 0
    puts "Buzz" if i % 5 == 0
    puts i unless i % 3 == 0 || i % 5 == 0
  end
end

fizzbuzz(15)


# número mas grande
def max_in_matrix(matrix)
  matrix.flatten.max
end

puts max_in_matrix([[1, 2, 3], [9, 5, 6], [7, 8, 4]])  # => 9
