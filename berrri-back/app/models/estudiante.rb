class Estudiante < ApplicationRecord
	has_many :materias_estudiante
	has_many :materias, through: :materias_estudiante
end
