require 'rails_helper'

RSpec.describe "noticias/index", type: :view do
  let(:sitio) { create :sitio }

  before(:each) do
    assign(:noticias, Kaminari.paginate_array([
      Noticia.create!(
        :id_original => 1,
        :titulo => "Titulo",
        :descripcion_corta => "Descripcion Corta",
        :url => "Url",
        :contenido => "Contenido",
        :fecha => Date.new(2019, 04, 28),
        :sitio => sitio
      ),
      Noticia.create!(
        :id_original => 1,
        :titulo => "Titulo",
        :descripcion_corta => "Descripcion Corta",
        :url => "Url",
        :contenido => "Contenido",
        :fecha => Date.new(2019, 04, 28),
        :sitio => sitio
      )
    ]).page(1))
  end

  it "renders a list of noticias" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
