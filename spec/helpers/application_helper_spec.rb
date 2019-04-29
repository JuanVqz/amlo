require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "#ruta_actual" do
    let(:ruta) { double('request', path: '/noticias') }

    before { allow(helper).to receive(:request).and_return ruta }

    context "cuando es la ruta actual" do
      it "debe regresar 'active'" do
        expect(helper.ruta_actual(noticias_path)).to eq 'active'
      end
    end # context cuando es la ruta actual

    context "cuando no es la ruta actual" do
      it "debe regresar false" do
        expect(helper.ruta_actual('/otra_ruta')).to be_falsey
      end
    end # context cuando no es la ruta actual
  end # describe "#ruta_actual"
end
