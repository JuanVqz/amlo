require 'rails_helper'

RSpec.describe "noticias/show", type: :view do
  let(:sitio) { create :sitio }

  before(:each) do
    @noticia = assign(:noticia, Noticia.create!(
      :id_original => 1,
      :titulo => "Titulo",
      :descripcion_corta => "Descripcion Corta",
      :url => "Url",
      :contenido => "Contenido",
      :fecha => Date.new(2019, 04, 28),
      :sitio => sitio
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Descripcion Corta/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Contenido/)
  end
end
