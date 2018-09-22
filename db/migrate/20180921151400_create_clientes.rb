class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :tipoId
      t.string :numId
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
