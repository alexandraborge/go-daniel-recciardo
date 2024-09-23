require 'rails_helper'

RSpec.describe "Races", type: :request do
  describe "GET /races" do
    it "returns http success" do
      get "/races"
      expect(response).to have_http_status(:success)
    end

    it 'gets all race information' do
      get "/races"
      # THE DB IS NOT SEEDED IN THE TEST ENVIRONMENT
      # I want to test that @races is an array with race objects in it
    end
  end
end
