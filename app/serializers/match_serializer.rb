class MatchSerializer < ActiveModel::Serializer
  attributes :id

  attributes :teams

  def teams

  	Team.find(object.equipo_local).nombre

  end
end
