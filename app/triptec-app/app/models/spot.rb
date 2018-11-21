class Spot
  include Mongoid::Document
  field :name, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :address, type: String
  field :type, type: String
  field :img, type: String
  field :telephone, type: String
  field :rating, type: String
  field :schedule, type: String
  field :website, type: String
  field :description, type: String
  field :activities, type: Array
  field :price, type: String
end
