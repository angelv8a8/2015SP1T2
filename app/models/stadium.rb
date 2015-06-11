class Stadium < ActiveRecord::Base

	has_many :matches

	validates :nombre, presence: true,format: { with: /\A[a-zA-Z ]+\z/,
    message: "Solo se permiten letras" }
	validates_uniqueness_of :nombre, :case_sensitive => false 

	validates :ciudad, presence: true,format: { with: /\A[a-zA-Z ]+\z/,
    message: "Solo se permiten letras" }
	validates_uniqueness_of :ciudad, :case_sensitive => false 


	validates :fecha_construccion, presence: true
	
	validates :capacidad, presence: true,format: { with: /\A[0-9]+\z/,
    message: "Solo numeros enteros" }

	validates :foto, presence: true, format: { with: URI.regexp,
    message: "Url invalida" }

    validates_inclusion_of :ciudad, :in => [ "Belo Horizonte", "Brasilia", "Cuiaba", 
    	"Curitiba", "Fortaleza", "Manaus", "Natal", "Recife", "Rio de Janeiro", "Salvador", "Sao Paulo"]




end
