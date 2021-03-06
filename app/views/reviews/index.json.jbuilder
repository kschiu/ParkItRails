json.array!(@reviews) do |review|
  json.extract! review, :id, :location_id, :rating, :description
  json.url review_url(review, format: :json)
end
