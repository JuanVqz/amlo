require 'rails_helper'

RSpec.describe "Sitios", type: :request do
  describe "GET /sitios" do
    it "works! (now write some real specs)" do
      get sitios_path
      expect(response).to have_http_status(200)
    end
  end
end
