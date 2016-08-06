require 'rails_helper'

RSpec.describe "geolocations/show", type: :view do
  before(:each) do
    @geolocation = assign(:geolocation, Geolocation.create!(
      :address => "Address",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(//)
  end
end
