class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end

# asosiaciones
class User < ApplicationRecord
  has_many :posts
  has_one  :profile
  belongs_to :company
  has_and_belongs_to_many :groups
end

user.posts.create(title: "Mi post")  # Crea una publicación para el usuario
user.posts.build(title: "Post nuevo") # Prepara sin guardar
user.posts.find_by(title: "Mi post")  # Encuentra un post relacionado
