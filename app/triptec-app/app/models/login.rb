class Login
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :id, type: String
  field :telephone, type: String
  field :wishes, type: Array
  field :reservations, type: Array
end
