json.extract! airport, :id, :address, :code, :latitude, :longitude, :created_at, :updated_at
json.url airport_url(airport, format: :json)