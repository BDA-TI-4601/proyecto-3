class Reservation
  include Mongoid::Document
  field :username, type: String
  field :name, type: String
  field :amount_people, type: Integer
  field :arrive_date, type: Date
  field :departure_date, type: Date
  field :needs, type: Array
  field :activities, type: Array
end
