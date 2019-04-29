require 'rails_helper'

RSpec.describe "noticias/edit", type: :view do
  let(:sitio) { create :sitio }

  before(:each) do
    @noticia = assign(:noticia, Noticia.create!(
      :titulo => "MyString",
      :descripcion_corta => "MyString",
      :url => "MyString",
      :contenido => "MyString",
      :fecha => Date.new(2019, 04, 28),
      :sitio => sitio
    ))
  end

  it "renders the edit noticia form" do
    render

    assert_select "form[action=?][method=?]", noticia_path(@noticia), "post" do

      assert_select "input[name=?]", "noticia[titulo]"

      assert_select "input[name=?]", "noticia[descripcion_corta]"

      assert_select "input[name=?]", "noticia[url]"

      assert_select "input[name=?]", "noticia[contenido]"

      assert_select "input[name=?]", "noticia[fecha]"

      assert_select "input[name=?]", "noticia[sitio_id]"
    end
  end
end
