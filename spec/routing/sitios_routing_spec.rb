require "rails_helper"

RSpec.describe SitiosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sitios").to route_to("sitios#index")
    end

    it "routes to #new" do
      expect(:get => "/sitios/new").to route_to("sitios#new")
    end

    it "routes to #show" do
      expect(:get => "/sitios/1").to route_to("sitios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sitios/1/edit").to route_to("sitios#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sitios").to route_to("sitios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sitios/1").to route_to("sitios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sitios/1").to route_to("sitios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sitios/1").to route_to("sitios#destroy", :id => "1")
    end
  end
end
