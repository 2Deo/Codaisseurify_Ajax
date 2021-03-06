require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "GET artists#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
