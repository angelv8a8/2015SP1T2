json.array!(@groups) do |group|
  json.extract! group, :id, :nombre
  json.url group_url(group, format: :json)
end
