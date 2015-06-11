class Team < ActiveRecord::Base

	belongs_to :group 
	has_many :stadia ,:through=> :matches
	has_many :matches, :class_name => 'Match', :foreign_key => 'equipo_local'
	has_many :matches, :class_name => 'Match', :foreign_key => 'equipo_visitante' 

	

	validates :nombre, presence: true,format: { with: /\A[a-zA-Z ]+\z/,
    message: "Solo se permiten letras" }
	validates :entrenador, presence: true


	validates :bandera, format: { with: URI.regexp,
    message: "Url invalida" }

    validates :uniforme, format: { with: URI.regexp,
    message: "Url invalida" }

    validates_length_of :texto, :maximum => 200
	validates_length_of :texto, :minimum => 15

	validates_uniqueness_of :nombre, :case_sensitive => false 
	validates_uniqueness_of :entrenador, :case_sensitive => false 
end
