json.extract! touristic_place, :id, :name_place, :latitude, :longitude, :address, :type, :img, :telephone, :rating, :schedule, :website, :description, :activities, :price_per_day, :created_at, :updated_at
json.url touristic_place_url(touristic_place, format: :json)
