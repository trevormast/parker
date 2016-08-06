require 'rails_helper'

RSpec.describe "geolocations/edit", type: :view do
  before(:each) do
    @geolocation = assign(:geolocation, Geolocation.create!(
      :address => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :user => nil
    ))
  end

  it "renders the edit geolocation form" do
    render

    assert_select "form[action=?][method=?]", geolocation_path(@geolocation), "post" do

      assert_select "input#geolocation_address[name=?]", "geolocation[address]"

      assert_select "input#geolocation_latitude[name=?]", "geolocation[latitude]"

      assert_select "input#geolocation_longitude[name=?]", "geolocation[longitude]"

      assert_select "input#geolocation_user_id[name=?]", "geolocation[user_id]"
    end
  end
end
