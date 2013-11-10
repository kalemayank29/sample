json.array!(@users) do |user|
  json.extract! user, :name, :pass
  json.url user_url(user, format: :json)
end