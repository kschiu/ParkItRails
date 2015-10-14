json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :location_id, :half_day, :full_day, :week, :month, :startDateTime, :endDateTime, :active
  json.url listing_url(listing, format: :json)
end
