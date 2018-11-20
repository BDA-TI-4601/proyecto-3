json.extract! employee, :id, :name_place, :latitude, :longitude, :address, :type, :img, :telephone, :rating, :schedule, :website, :description, :activities, :price_per_day, :created_at, :updated_at
json.url employee_url(employee, format: :json)
