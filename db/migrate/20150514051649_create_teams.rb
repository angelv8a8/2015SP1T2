class CreateTeams < ActiveRecord::Migration
  def change
    drop_table :teams

    create_table :teams do |t|
      t.string :nombre
      t.string :entrenador
      t.string :bandera
      t.string :uniforme
      t.string :texto

      t.timestamps null: false
    end
  end
end
