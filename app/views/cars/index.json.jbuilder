json.array!(@cars) do |car|
  json.extract! car, :id, :purchase_id, :make, :model, :license
  json.url car_url(car, format: :json)
end
