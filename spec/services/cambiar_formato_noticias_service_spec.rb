require 'rails_helper'

RSpec.describe CambiarFormatoNoticiasService do

  subject { described_class }

  let(:forbes) do
    create :sitio, nombre: 'Forbes',
      url: 'https://www.forbes.com.mx/wp-json/wp/v2/posts'
  end

  before :each do
    datos  = ObtenerNoticiasService.new(forbes, "amlo").buscar
    @notas = subject.new(datos).generar
  end

  it "debe regresar un arreglo", :vcr do
    expect(@notas).to be_an Array
  end

  it "debe tener un id", :vcr do
    expect(@notas.first).to have_key :id
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
