class Group < ActiveRecord::Base

	has_many :teams

	validates :nombre, presence: true,format: { with: /\A[a-zA-Z]\z/,
    message: "El nombre solo puede tener una letra" }

    validates_uniqueness_of :nombre, :case_sensitive => false 
	
end
