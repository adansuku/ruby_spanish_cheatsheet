def unique_chars?(str)
  str.chars.uniq.length == str.length
end

puts unique_chars?("abcdef")  # => true
puts unique_chars?("hello")   # => false
