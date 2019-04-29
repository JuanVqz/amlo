require "rails_helper"

RSpec.describe NoticiasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/noticias").to route_to("noticias#index")
    end

    it "routes to #new" do
      expect(:get => "/noticias/new").to route_to("noticias#new")
    end

    it "routes to #show" do
      expect(:get => "/noticias/1").to route_to("noticias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/noticias/1/edit").to route_to("noticias#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/noticias").to route_to("noticias#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/noticias/1").to route_to("noticias#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/noticias/1").to route_to("noticias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/noticias/1").to route_to("noticias#destroy", :id => "1")
    end
  end
end
