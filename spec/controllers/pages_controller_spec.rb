require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #portfolio" do
    it "returns http success" do
      get :portfolio
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #resume" do
    it "returns http success" do
      get :resume
      expect(response).to have_http_status(:success)
    end
  end

end
