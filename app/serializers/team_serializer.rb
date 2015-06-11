class TeamSerializer < ActiveModel::Serializer
  attributes :nombre
  attributes :entrenador

  attributes :group_name
  attributes :texto
  attributes :bandera
  attributes :uniforme

  attributes :matches #, serializer: MatchSerializer
  
  #has_one :group, serializer: GroupSerializer
  
  def group_name

  	Group.find(object.group_id).nombre

  end

  def matches

    #Match.where('equipo_local = ? or equipo_visitante = ?', object.id, object.id)
    '{local:' + Team.find(object.equipo_visitante).nombre + '","' + Team.find(object.equipo_local).nombre + "}"

  end

  
end
