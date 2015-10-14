json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :buyer_id, :seller_id, :listing_id, :date
  json.url purchase_url(purchase, format: :json)
end
