require 'rails_helper'

RSpec.describe SpeciesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe "GET #create" do
    it "returns http redirect" do
      post :create
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #delete" do
    it "returns http success" do
      delete :delete
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      patch :update
      expect(response).to have_http_status(:success)
    end
  end



end
