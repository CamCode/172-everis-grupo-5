class MateriasEstudiante < ApplicationRecord
  belongs_to :materias
  belongs_to :estudiante
  has_many :materias, :through => :materias_estudiante
end
