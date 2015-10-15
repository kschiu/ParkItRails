json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :password_confirmation, :email, :picture
  json.url user_url(user, format: :json)
end
