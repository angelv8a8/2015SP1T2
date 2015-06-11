class CreateStadia < ActiveRecord::Migration
  def change
    drop_table :stadia
    
    create_table :stadia do |t|
      t.string :nombre
      t.string :ciudad
      t.string :foto
      t.date :fecha_construccion
      t.integer :capacidad

      t.timestamps null: false
    end
  end
end
