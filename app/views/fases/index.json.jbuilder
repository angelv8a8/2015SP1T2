json.array!(@fases) do |fase|
  json.extract! fase, :id, :nombre
  json.url fase_url(fase, format: :json)
end
