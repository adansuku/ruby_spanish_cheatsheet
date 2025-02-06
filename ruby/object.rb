puts nil.nil?          # => true (si el objeto es nil)
puts 42.is_a?(Integer)  # => true (si es del tipo Integer)
puts "hello".is_a?(String)  # => true (si es una cadena)
puts 3.respond_to?(:odd?)  # => true (si soporta el método `odd?`)


obj = "Hello"

puts obj.class         # => String (devuelve la clase del objeto)
puts obj.object_id     # => 70126068191880 (ID único del objeto)
puts obj.methods       # => Lista de métodos disponibles en el objeto
puts obj.public_methods(false) # => Métodos públicos definidos en la instancia
puts obj.private_methods       # => Métodos privados del objeto
puts obj.instance_variables  # => [] (lista de variables de instancia)
puts obj.respond_to?(:upcase)  # => true (verifica si soporta un método)
puts obj.frozen?         # => false (devuelve true si el objeto está congelado)


# Manipulación de objetos
obj = "Hello"

dup_obj = obj.dup   # Crea una copia superficial (mutable)
clone_obj = obj.clone  # Crea una copia exacta (incluye congelamiento)

puts obj.equal?(dup_obj)    # => false (compara identidad de objetos)
puts obj.eql?("Hello")      # => true (compara contenido y tipo)
puts obj == "Hello"         # => true (compara contenido)

# Evaluación dinamica
obj = "Hello"

puts obj.instance_of?(String)  # => true (verifica la clase exacta)
puts obj.kind_of?(Object)      # => true (verifica si pertenece a una jerarquía)
puts obj.is_a?(String)         # => true (sinónimo de kind_of?)

obj2 = 42
puts obj2.send(:+, 8)          # => 50 (invoca métodos dinámicamente)
puts obj2.public_send(:to_s)   # => "42" (invoca métodos públicos dinámicamente)



# Serialización y conversión
obj = "Hello"

puts obj.instance_of?(String)  # => true (verifica la clase exacta)
puts obj.kind_of?(Object)      # => true (verifica si pertenece a una jerarquía)
puts obj.is_a?(String)         # => true (sinónimo de kind_of?)

obj2 = 42
puts obj2.send(:+, 8)          # => 50 (invoca métodos dinámicamente)
puts obj2.public_send(:to_s)   # => "42" (invoca métodos públicos dinámicamente)


# Congelamiento y mutlabilidad
obj = "Immutable String"
obj.freeze             # Congela el objeto (lo hace inmutable)
# obj << " can't change"  # => Error: can't modify frozen String

obj_clone = obj.clone
puts obj_clone.frozen?  # => true (clonado mantiene congelamiento)


# Metodos de definicion de varialbes y metodos dinamicamnete
class Person
  attr_accessor :name
end

p = Person.new
p.instance_variable_set(:@name, "Adan")
puts p.instance_variable_get(:@name)  # => "Adan"

p.define_singleton_method(:greet) { "Hello, #{p.name}" }
puts p.greet  # => "Hello, Adan"



# Metodos de reflexion de clases
class MyClass
  def my_method; end
end

puts MyClass.ancestors      # => [MyClass, Object, Kernel, BasicObject]
puts MyClass.superclass     # => Object (obtiene la clase padre)
puts MyClass.instance_methods(false)  # => [:my_method] (lista métodos definidos en la clase)
puts MyClass.const_defined?(:String)  # => false (verifica si la constante está definida)
