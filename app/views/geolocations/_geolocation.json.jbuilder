json.extract! geolocation, :id, :address, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url geolocation_url(geolocation, format: :json)