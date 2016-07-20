json.array!(@users) do |user|
  json.extract! user, :id, :name, :description, :dob, :education
  json.url user_url(user, format: :json)
end
