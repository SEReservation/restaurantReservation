json.array!(@tables) do |table|
  json.extract! table, :id, :num_seats, :restaurant_id, :x_loc, :y_loc, :available
  json.url table_url(table, format: :json)
end
