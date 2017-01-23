class Articulo < ActiveRecord::Base
  belongs_to :usuario
  has_many :comentarios, dependent: :destroy
end
