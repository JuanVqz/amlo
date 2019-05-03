require 'rails_helper'

RSpec.describe IndexarNoticiasService do

  subject { described_class }

  let(:sitio) do
    create :sitio, nombre: 'Forbes',
      url: 'https://www.forbes.com.mx/wp-json/wp/v2/posts'
  end

  before :each do
    datos  = ObtenerNoticiasService.new(sitio, "amlo").buscar
    @notas = subject.new(sitio, datos).seleccionar
  end

  it "debe regresar un arreglo", :vcr do
    expect(@notas).to be_an Array
  end

  it "debe tener un id_original", :vcr do
    expect(@notas.first).to have_key :id_original
  end

  it "debe tener un titulo", :vcr do
    expect(@notas.first).to have_key :titulo
  end

  it "debe tener una descripción corta", :vcr do
    expect(@notas.first).to have_key :descripcion_corta
  end

  it "debe tener una url", :vcr do
    expect(@notas.first).to have_key :url
  end

  it "debe tener una fecha", :vcr do
    expect(@notas.first).to have_key :fecha
  end
end
