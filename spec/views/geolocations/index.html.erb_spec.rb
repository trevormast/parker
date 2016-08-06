require 'rails_helper'

RSpec.describe "geolocations/index", type: :view do
  before(:each) do
    assign(:geolocations, [
      Geolocation.create!(
        :address => "Address",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :user => nil
      ),
      Geolocation.create!(
        :address => "Address",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :user => nil
      )
    ])
  end

  it "renders a list of geolocations" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
