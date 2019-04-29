require 'rails_helper'

RSpec.describe "sitios/new", type: :view do
  before(:each) do
    assign(:sitio, Sitio.new(
      :nombre => "MyString",
      :descripcion => "MyString",
      :url => "MyString",
      :ultimo_indexado => "MyString"
    ))
  end

  it "renders new sitio form" do
    render

    assert_select "form[action=?][method=?]", sitios_path, "post" do

      assert_select "input[name=?]", "sitio[nombre]"

      assert_select "input[name=?]", "sitio[descripcion]"

      assert_select "input[name=?]", "sitio[url]"

      assert_select "input[name=?]", "sitio[ultimo_indexado]"
    end
  end
end
