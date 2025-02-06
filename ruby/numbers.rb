num = 42

puts num.to_s          # => "42" (convierte a string)
puts num.even?         # => true (si es par)
puts num.odd?          # => false (si es impar)
puts num.abs           # => 42 (valor absoluto)
puts num.round(2)      # => 42 (redondea con 2 decimales)
puts num.ceil          # => 42 (redondea hacia arriba)
puts num.floor         # => 42 (redondea hacia abajo)
puts num.digits        # => [2, 4] (descompone el número)
puts Math.sqrt(num)    # => 6.48 (raíz cuadrada)
puts Math.log(num)     # => 3.74 (logaritmo natural)
puts rand(1..100)      # => (número aleatorio en el rango 1 a 100)
