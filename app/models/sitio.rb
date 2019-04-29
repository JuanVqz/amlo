class Sitio < ApplicationRecord
  has_many :noticias

  validates :nombre, :url, presence: true
  validates :nombre, uniqueness: { case_sensitive: false }

  def to_s
    nombre
  end
end
