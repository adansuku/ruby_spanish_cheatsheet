def call_with_block
  yield if block_given?
end

call_with_block { puts "Bloque ejecutado" }  # => Bloque ejecutado

lambda_function = ->(name) { "Hello, #{name}" }
puts lambda_function.call("Adan")  # => "Hello, Adan"


#### Lambdas
# Los lambdas son objetos Proc que se comportan como métodos.
my_lambda = ->(x) { x * 2 }
puts my_lambda.call(5)  # => 10



#### Procs
# Los Procs son bloques de código que se pueden almacenar en variables.
my_proc = Proc.new { |x| x * 2 }
puts my_proc.call(5)  # => 10




# Bloques
# Los bloques son fragmentos de código que se pueden pasar a métodos.
def example(&block)
  block.call("Hello")
end

example { |msg| puts msg }  # => "Hello"

# Pasar un Proc como bloque a un método
my_proc = Proc.new { |x| puts x }
[1, 2, 3].each(&my_proc)  # => 1 2 3


# Lambda: requiere el número exacto de argumentos
my_lambda = ->(a, b) { a + b }
puts my_lambda.call(2, 3)  # => 5
# puts my_lambda.call(2)   # => Error (wrong number of arguments)

# Proc: no obliga a cumplir el número exacto de argumentos
my_proc = Proc.new { |a, b| a.to_i + b.to_i }
puts my_proc.call(2)       # => 2 (b será nil y se convertirá a 0)



def test_lambda
  l = -> { return "Hello from lambda" }
  l.call
  "Goodbye from method"
end

puts test_lambda  # => "Goodbye from method"
