json.array!(@users) do |user|
  json.extract! user, :id, :name, :group
  json.url user_url(user, format: :json)
end
