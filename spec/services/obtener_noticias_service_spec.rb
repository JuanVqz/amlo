require 'rails_helper'

RSpec.describe ObtenerNoticiasService do

  subject { described_class }

  describe "cuando la solicitud es correcta", :vcr do
    let(:forbes) do
      create :sitio, nombre: 'Forbes',
        url: 'https://www.forbes.com.mx/wp-json/wp/v2/posts'
    end

    before :each do
      @respuesta = subject.new(forbes, "amlo").buscar
    end

    it "debe regresar una respuesta en format json" do
      formato_json = "application/json; charset=UTF-8"
      expect(@respuesta.headers["content-type"]).to eq formato_json
    end

    it "debe regresar una respuesta satisfactoria" do
      expect(@respuesta.code).to eq 200
    end

    it "debe regresar un id" do
      expect(@respuesta.body).to match(/id/)
    end

    it "debe regresar un title" do
      expect(@respuesta.body).to match(/title/)
    end

    it "debe regresar una excerpt" do
      expect(@respuesta.body).to match(/excerpt/)
    end

    it "debe regresar un link" do
      expect(@respuesta.body).to match(/link/)
    end

    it "debe regresar un date" do
      expect(@respuesta.body).to match(/date/)
    end
  end # describe "cuando la solicitud es correcta"

  describe "cuando la url es incorrecta" do
    let(:forbes) do
      create :sitio, nombre: 'Forbes',
        url: 'https://www.forbes.com.mx/wp-json/wp'
    end

    it "debe regresar el estatus 404" do
      respuesta = subject.new(forbes, "amlo").buscar
      expect(respuesta["data"]["status"]).to eq 404
    end
  end # describe "cuando la url es incorrecta"

end
