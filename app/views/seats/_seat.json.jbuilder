json.extract! seat, :id, :show_id, :booked, :seat_number, :created_at, :updated_at
json.url seat_url(seat, format: :json)
