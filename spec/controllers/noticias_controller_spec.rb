require 'rails_helper'

RSpec.describe NoticiasController, type: :controller do

  let(:sitio) { create :sitio }
  let(:valid_attributes) { attributes_for :noticia, sitio_id: sitio.id }

  let(:invalid_attributes) { attributes_for :noticia, titulo: nil }

  describe "GET #index" do
    it "returns a success response" do
      Noticia.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      noticia = Noticia.create! valid_attributes
      get :show, params: {id: noticia.to_param}
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
      noticia = Noticia.create! valid_attributes
      get :edit, params: {id: noticia.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Noticia" do
        expect {
          post :create, params: {noticia: valid_attributes}
        }.to change(Noticia, :count).by(1)
      end

      it "redirects to the created noticia" do
        post :create, params: {noticia: valid_attributes}
        expect(response).to redirect_to(Noticia.last)
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        post :create, params: {noticia: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        { titulo: "nuevo titulo" }
      end

      it "updates the requested noticia" do
        noticia = Noticia.create! valid_attributes
        put :update, params: {id: noticia.to_param, noticia: new_attributes}
        noticia.reload
        expect(noticia.titulo).to eq "nuevo titulo"
      end

      it "redirects to the noticia" do
        noticia = Noticia.create! valid_attributes
        put :update, params: {id: noticia.to_param, noticia: valid_attributes}
        expect(response).to redirect_to(noticia)
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        noticia = Noticia.create! valid_attributes
        put :update, params: {id: noticia.to_param, noticia: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested noticia" do
      noticia = Noticia.create! valid_attributes
      expect {
        delete :destroy, params: {id: noticia.to_param}
      }.to change(Noticia, :count).by(-1)
    end

    it "redirects to the noticias list" do
      noticia = Noticia.create! valid_attributes
      delete :destroy, params: {id: noticia.to_param}
      expect(response).to redirect_to(noticias_url)
    end
  end

end
