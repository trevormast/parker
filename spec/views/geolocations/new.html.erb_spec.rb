require 'rails_helper'

RSpec.describe "geolocations/new", type: :view do
  before(:each) do
    assign(:geolocation, Geolocation.new(
      :address => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :user => nil
    ))
  end

  it "renders new geolocation form" do
    render

    assert_select "form[action=?][method=?]", geolocations_path, "post" do

      assert_select "input#geolocation_address[name=?]", "geolocation[address]"

      assert_select "input#geolocation_latitude[name=?]", "geolocation[latitude]"

      assert_select "input#geolocation_longitude[name=?]", "geolocation[longitude]"

      assert_select "input#geolocation_user_id[name=?]", "geolocation[user_id]"
    end
  end
end
