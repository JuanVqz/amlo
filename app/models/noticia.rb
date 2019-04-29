class Noticia < ApplicationRecord
  belongs_to :sitio

  validates :titulo, :descripcion_corta, :url, :sitio_id, presence: true
end
