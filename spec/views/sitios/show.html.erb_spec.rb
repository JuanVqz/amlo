require 'rails_helper'

RSpec.describe "sitios/show", type: :view do
  before(:each) do
    @sitio = assign(:sitio, Sitio.create!(
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :url => "Url",
      :ultimo_indexado => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Url/)
  end
end
