require 'rails_helper'

RSpec.describe "Geolocations", type: :request do
  describe "GET /geolocations" do
    it "works! (now write some real specs)" do
      get geolocations_path
      expect(response).to have_http_status(200)
    end
  end
end
