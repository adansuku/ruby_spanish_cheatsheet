range = (1..10)

puts range.include?(5)  # => true (verifica si está en el rango)
puts range.to_a         # => [1,2,3,4,5,6,7,8,9,10] (convierte a array)
puts range.first        # => 1 (primer elemento)
puts range.last         # => 10 (último elemento)
puts range.step(2).to_a # => [1,3,5,7,9] (incrementa de 2 en 2)
