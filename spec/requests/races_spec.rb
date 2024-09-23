require 'rails_helper'

RSpec.describe "Races", type: :request do
  describe "GET /races" do
    it "returns http success" do
      get "/races"
      expect(response).to have_http_status(:success)
    end

    it 'gets race information from the OpenF1 API for a given season' do
      expect(HTTParty).to receive(:get).with("https://api.openf1.org/v1/meetings?year=2024")
      get "/races"
    end
  end
end
