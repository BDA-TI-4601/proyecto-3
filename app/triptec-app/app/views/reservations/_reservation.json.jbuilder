json.extract! reservation, :id, :name, :amount_people, :arrive_date, :departure_date, :needs, :activities, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
