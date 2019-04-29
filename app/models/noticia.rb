class Noticia < ApplicationRecord
  belongs_to :sitio

  validates :titulo, :descripcion_corta, :url, presence: true
end
