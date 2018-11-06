class CreateMateriasEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :materias_estudiantes do |t|
      t.references :materia, foreign_key: true
      t.references :estudiantes, foreign_key: true

      t.timestamps
    end
  end
end
