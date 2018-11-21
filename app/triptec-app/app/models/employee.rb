class Employee
  include Mongoid::Document
  field :description, type: String
  field :activities, type: String
  field :price_per_day, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :place_id, type: String
end
