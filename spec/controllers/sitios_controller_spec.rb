require 'rails_helper'

RSpec.describe SitiosController, type: :controller do

  let(:valid_attributes) { attributes_for :sitio }

  let(:invalid_attributes) { attributes_for :sitio, nombre: nil }

  describe "GET #index" do
    it "returns a success response" do
      Sitio.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      sitio = Sitio.create! valid_attributes
      get :show, params: {id: sitio.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      sitio = Sitio.create! valid_attributes
      get :edit, params: {id: sitio.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Sitio" do
        expect {
          post :create, params: {sitio: valid_attributes}
        }.to change(Sitio, :count).by(1)
      end

      it "redirects to the created sitio" do
        post :create, params: {sitio: valid_attributes}
        expect(response).to redirect_to(Sitio.last)
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        post :create, params: {sitio: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        { nombre: "nuevo nombre" }
      end

      it "updates the requested sitio" do
        sitio = Sitio.create! valid_attributes
        put :update, params: {id: sitio.to_param, sitio: new_attributes}
        sitio.reload
        expect(sitio.nombre).to eq "nuevo nombre"
      end

      it "redirects to the sitio" do
        sitio = Sitio.create! valid_attributes
        put :update, params: {id: sitio.to_param, sitio: valid_attributes}
        expect(response).to redirect_to sitio
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        sitio = Sitio.create! valid_attributes
        put :update, params: {id: sitio.to_param, sitio: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested sitio" do
      sitio = Sitio.create! valid_attributes
      expect {
        delete :destroy, params: {id: sitio.to_param}
      }.to change(Sitio, :count).by(-1)
    end

    it "redirects to the sitios list" do
      sitio = Sitio.create! valid_attributes
      delete :destroy, params: {id: sitio.to_param}
      expect(response).to redirect_to(sitios_url)
    end
  end

end
