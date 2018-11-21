class Client
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :name, type: String
  field :id_client, type: String
  field :telephone, type: String
  field :wishes, type: Array
  field :reservations, type: Array
end
