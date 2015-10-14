json.array!(@locations) do |location|
  json.extract! location, :id, :user_id, :street_address, :city, :state, :zip_code, :min_to_campus, :num_cars, :car_type
  json.url location_url(location, format: :json)
end
