class CreateMateria < ActiveRecord::Migration[5.2]
  def change
    create_table :materia do |t|
      t.string :idMateria
      t.string :nombreMateria

      t.timestamps
    end
  end
end
