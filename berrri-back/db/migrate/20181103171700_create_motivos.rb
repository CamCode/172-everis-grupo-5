class CreateMotivos < ActiveRecord::Migration[5.2]
  def change
    create_table :motivos do |t|
      t.integer :idMotivo, null:false
      t.string :nombreMotivo, null:false

      t.timestamps
    end
  end
end
