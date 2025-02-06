def balanced?(str)
  stack = []
  pairs = { ')' => '(', '}' => '{', ']' => '[' }

  str.chars.each do |char|
    if pairs.values.include?(char)
      stack.push(char)
    elsif pairs.keys.include?(char)
      return false if stack.empty? || stack.pop != pairs[char]
    end
  end

  stack.empty?
end

puts balanced?("({[]})")  # => true
puts balanced?("({[})")   # => false
