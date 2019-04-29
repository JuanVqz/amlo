require 'rails_helper'

RSpec.describe "Noticias", type: :request do
  describe "GET /noticias" do
    it "works! (now write some real specs)" do
      get noticias_path
      expect(response).to have_http_status(200)
    end
  end
end
