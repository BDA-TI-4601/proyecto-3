json.extract! client, :id, :username, :password, :id, :telephone, :wishes, :reservations, :created_at, :updated_at
json.url client_url(client, format: :json)
