class Sitio < ApplicationRecord
  validates :nombre, :url, presence: true
  validates :nombre, uniqueness: { case_sensitive: false }
end
