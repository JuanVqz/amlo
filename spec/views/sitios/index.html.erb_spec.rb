require 'rails_helper'

RSpec.describe "sitios/index", type: :view do
  before(:each) do
    assign(:sitios, Kaminari.paginate_array([
      Sitio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :url => "Url",
        :ultimo_indexado => "Ultimo Indexado"
      ),
      Sitio.create!(
        :nombre => "Nombre 2",
        :descripcion => "Descripcion",
        :url => "Url 2",
        :ultimo_indexado => "Ultimo Indexado"
      )
    ]).page(1))
  end

  it "renders a list of sitios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 1
    assert_select "tr>td", :text => "Url".to_s, :count => 1
  end
end
