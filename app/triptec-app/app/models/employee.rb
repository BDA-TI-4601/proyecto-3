class Employee
  include Mongoid::Document
  field :name_place, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :address, type: String
  field :type, type: String
  field :img, type: String
  field :telephone, type: String
  field :rating, type: Float
  field :schedule, type: String
  field :website, type: String
  field :description, type: String
  field :activities, type: Array
  field :price_per_day, type: String
end
