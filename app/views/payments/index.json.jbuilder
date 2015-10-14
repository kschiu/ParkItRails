json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :card_number, :expiration_date, :holder_name, :card_type, :security_code
  json.url payment_url(payment, format: :json)
end
