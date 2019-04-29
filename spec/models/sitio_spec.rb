require 'rails_helper'

RSpec.describe Sitio, type: :model do
  it { should have_many :noticias }

  it { should validate_presence_of :nombre }
  it { should validate_presence_of :url }

  it { should validate_uniqueness_of(:nombre).case_insensitive }

  describe "#to_s" do
    let(:sitio) { create :sitio, nombre: "sitio de noticias" }

    it "debe regresar el nombre" do
      expect(sitio.to_s).to eq "sitio de noticias"
    end
  end # describe "#to_s"
end
