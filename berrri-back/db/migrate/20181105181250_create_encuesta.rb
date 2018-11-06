class CreateEncuesta < ActiveRecord::Migration[5.2]
  def change
    create_table :encuesta do |t|
      t.belongs_to :motivo, foreign_key: true
      t.belongs_to :estudiante, foreign_key: true	
      t.string :materias
      t.string :curso

      t.timestamps
    end
  end
end








