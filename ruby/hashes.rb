hash = { name: "Adan", age: 39, city: "Tenerife" }

puts hash.keys          # => [:name, :age, :city] (claves del hash)
puts hash.values        # => ["Adan", 39, "Tenerife"] (valores del hash)
puts hash.has_key?(:name)   # => true (si existe clave :name)
puts hash.has_value?("Adan") # => true (si existe el valor "Adan")
puts hash.fetch(:age, 0)  # => 39 (valor de clave :age, o 0 por defecto)
puts hash.merge({ country: "Spain" }) # => {name: "Adan", age: 39, city: "Tenerife", country: "Spain"}
hash.each { |key, value| puts "#{key}: #{value}" }  # Itera sobre cada par
puts hash.select { |k, v| v.is_a?(String) } # => { name: "Adan", city: "Tenerife" } (filtra strings)
puts hash.reject { |k, v| v == "Tenerife" } # => { name: "Adan", age: 39 }
puts hash.transform_keys(&:to_s)  # => {"name"=>"Adan", "age"=>39, "city"=>"Tenerife"} (convierte claves a string)
puts hash.transform_values(&:upcase) # => {:name=>"ADAN", :age=>"39", :city=>"TENERIFE"}
puts hash.inhject(:+)    # => "Adan39Tenerife" (concatena los valores)
