class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.belongs_to :motivo, foreign_key: true
      t.string :tipoId
      t.string :numId
      t.string :nombre
      t.string :apellido
      t.string :edad
      t.string :genero

      t.timestamps
    end
  end
end
