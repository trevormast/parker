class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :address
      t.string :latitude
      t.string :longitude
      t.references :user, index: true

      t.timestamps
    end
  end
end
