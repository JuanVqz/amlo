require 'rails_helper'

RSpec.describe "sitios/edit", type: :view do
  before(:each) do
    @sitio = assign(:sitio, Sitio.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :url => "MyString",
      :ultimo_indexado => "MyString"
    ))
  end

  it "renders the edit sitio form" do
    render

    assert_select "form[action=?][method=?]", sitio_path(@sitio), "post" do

      assert_select "input[name=?]", "sitio[nombre]"

      assert_select "input[name=?]", "sitio[descripcion]"

      assert_select "input[name=?]", "sitio[url]"

      assert_select "input[name=?]", "sitio[ultimo_indexado]"
    end
  end
end
