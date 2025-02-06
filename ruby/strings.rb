str = "Hello World"

puts str.length         # => 11 (cantidad de caracteres)
puts str.empty?         # => false (si está vacío)
puts str.include?("World")  # => true (si contiene "World")
puts str.start_with?("Hello") # => true (si empieza con "Hello")
puts str.end_with?("World")   # => true (si termina con "World")
puts str.upcase         # => "HELLO WORLD" (mayúsculas)
puts str.downcase       # => "hello world" (minúsculas)
puts str.capitalize     # => "Hello world" (primera en mayúscula)
puts str.strip          # => "Hello World" (elimina espacios)
puts str.chomp          # => "Hello World" (quita salto de línea final)
puts str.gsub("World", "Ruby")  # => "Hello Ruby" (reemplaza texto)
puts str.split(" ")     # => ["Hello", "World"] (divide por espacio)
puts str.chars          # => ["H", "e", "l", "l", "o", ...] (array de caracteres)
puts str.reverse        # => "dlroW olleH" (invierte la cadena)
puts str[0..4]          # => "Hello" (subcadena)
puts str.index("World")  # => 6 (posición de la subcadena)
puts str.count("l")     # => 3 (cantidad de "l")
puts str.scan(/\w+/)    # => ["Hello", "World"] (palabras encontradas)
puts str.to_sym         # => :Hello_World (convierte a símbolo)
puts str.delete(' ')   # => "HelloWorld" (elimina espacios) aunque mejor strip

