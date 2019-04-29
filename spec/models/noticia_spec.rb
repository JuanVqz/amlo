require 'rails_helper'

RSpec.describe Noticia, type: :model do
  it { should belong_to :sitio }

  it { should validate_presence_of :titulo }
  it { should validate_presence_of :descripcion_corta }
  it { should validate_presence_of :url }
  it { should validate_presence_of :sitio_id }
end
