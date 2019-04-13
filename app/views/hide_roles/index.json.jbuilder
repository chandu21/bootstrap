json.array!(@hide_roles) do |hide_role|
  json.extract! hide_role, :id
  json.url hide_role_url(hide_role, format: :json)
end
