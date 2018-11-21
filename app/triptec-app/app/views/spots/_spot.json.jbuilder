json.extract! spot, :id, :name, :latitude, :longitude, :address, :type, :img, :telephone, :rating, :schedule, :website, :description, :activities, :price, :created_at, :updated_at
json.url spot_url(spot, format: :json)
