require 'rails_helper'

RSpec.describe "noticias/new", type: :view do
  before(:each) do
    assign(:noticia, Noticia.new(
      :titulo => "MyString",
      :descripcion_corta => "MyString",
      :url => "MyString",
      :contenido => "MyString",
      :fecha => "MyString",
      :sitio => nil
    ))
  end

  it "renders new noticia form" do
    render

    assert_select "form[action=?][method=?]", noticias_path, "post" do

      assert_select "input[name=?]", "noticia[titulo]"

      assert_select "input[name=?]", "noticia[descripcion_corta]"

      assert_select "input[name=?]", "noticia[url]"

      assert_select "input[name=?]", "noticia[contenido]"

      assert_select "select[name=?]", "noticia[sitio_id]"
    end
  end
end
