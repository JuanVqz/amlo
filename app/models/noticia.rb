class Noticia < ApplicationRecord
  belongs_to :sitio

  validates :id_original, :titulo, :descripcion_corta, :url, :sitio_id, presence: true
end
