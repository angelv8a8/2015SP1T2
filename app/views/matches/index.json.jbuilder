json.array!(@matches) do |match|
  json.extract! match, :id, :matchdate, :fase, :estado, :equipo_local, :equipo_visitante, :marcador_local, :marcador_visitante, :equipo_ganador, :equipo_perdedor, :empate?, :grupo, :estadio
  json.url match_url(match, format: :json)
end
