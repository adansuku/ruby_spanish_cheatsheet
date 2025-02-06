User.all               # => Devuelve todos los registros
User.find(1)           # => Encuentra por ID
User.find_by(email: "adan@example.com")  # => Encuentra por atributo
User.where(active: true)  # => Filtra registros
User.order(:created_at)   # => Ordena registros
User.limit(5)             # => Limita la cantidad de registros
User.pluck(:name)         # => Devuelve un array de valores de una columna


# avanzadas
User.where("age > ?", 30)  # => Búsqueda con condiciones SQL
User.includes(:posts)      # => Evita el problema de N+1 queries
User.joins(:posts)         # => JOIN con otra tabla
User.select(:name, :email) # => Selecciona columnas específicas
User.group(:city).count    # => Agrupa y cuenta registros
User.average(:age)         # => Calcula el promedio de una columna
User.exists?(name: "Adan") # => Verifica si existe un registro
User.find_or_create_by(name: "Adan")  # => Encuentra o crea un registro
User.find_or_initialize_by(name: "Adan")  # => Encuentra o inicializa un registro
User.create(name: "Adan")  # => Crea un registro
User.create!(name: nil)    # => Lanza una excepción si falla

# Crud
user = User.new(name: "Adan", email: "adan@example.com")
user.save                 # => Guarda en la base de datos

user.update(name: "Adán")  # => Actualiza atributos
user.destroy              # => Elimina el registro
