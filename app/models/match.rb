class Match < ActiveRecord::Base

	#belongs_to :team, :class_name => 'Team', :foreign_key => 'equipo_local'
 	#belongs_to :team, :class_name => 'Team', :foreign_key => 'equipo_visitante'

 	has_one :team, :class_name => 'Team', :foreign_key => 'equipo_local'
 	has_one :team, :class_name => 'Team', :foreign_key => 'equipo_visitante'

 	has_one :stadia, :class_name => 'Stadia', :foreign_key => 'estadio'

 	belongs_to :stadia, :class_name => 'Stadia', :foreign_key => 'estadio'

 	belongs_to :group, :class_name => 'Group', :foreign_key => 'group'

	validates :matchdate, presence: true

	validates :fase, presence: true
	validates :estado, presence: true

	validates :equipo_local, presence: true
	validates :equipo_visitante, presence: true

	validates :marcador_local, presence:true, format: { with: /\A[0-9]+\z/, message: "Solo numeros enteros" }
    validates :marcador_visitante, presence:true, format: { with: /\A[0-9]+\z/, message: "Solo numeros enteros" }

	validates :estadio, presence: true

	validates_inclusion_of :estado, :in => [ "Por Jugar", "En Juego", "Finalizado"]


end
