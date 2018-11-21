json.extract! login, :id, :username, :password, :id, :telephone, :wishes, :reservations, :created_at, :updated_at
json.url login_url(login, format: :json)
