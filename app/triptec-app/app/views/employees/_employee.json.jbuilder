json.extract! employee, :id, :description, :activities, :price_per_day, :latitude, :longitude, :created_at, :updated_at
json.url employee_url(employee, format: :json)
