json.array!(@stadia) do |stadium|
  json.extract! stadium, :id, :nombre, :ciudad, :foto, :fecha_construccion, :capacidad
  json.url stadium_url(stadium, format: :json)
end
