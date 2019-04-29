require 'rails_helper'

RSpec.describe "noticias/index", type: :view do
  let(:sitio) { create :sitio }

  before(:each) do
    assign(:noticias, [
      Noticia.create!(
        :titulo => "Titulo",
        :descripcion_corta => "Descripcion Corta",
        :url => "Url",
        :contenido => "Contenido",
        :fecha => Date.new(2019, 04, 28),
        :sitio => sitio
      ),
      Noticia.create!(
        :titulo => "Titulo",
        :descripcion_corta => "Descripcion Corta",
        :url => "Url",
        :contenido => "Contenido",
        :fecha => Date.new(2019, 04, 28),
        :sitio => sitio
      )
    ])
  end

  it "renders a list of noticias" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion Corta".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Contenido".to_s, :count => 2
  end
end
