def reverse_words(sentence)
  sentence.split.reverse.join(" ")
end

puts reverse_words("Hello World")  # => "World Hello"
