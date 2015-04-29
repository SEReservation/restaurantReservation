json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :time
  json.url reservation_url(reservation, format: :json)
end
