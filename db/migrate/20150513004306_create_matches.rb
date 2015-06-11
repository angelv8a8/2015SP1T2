class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :matchdate
      t.integer :fase
      t.string :estado
      t.integer :equipo_local
      t.integer :equipo_visitante
      t.integer :marcador_local
      t.integer :marcador_visitante
      t.integer :equipo_ganador
      t.integer :equipo_perdedor
      t.boolean :empate?
      t.integer :grupo
      t.integer :estadio

      t.timestamps null: false
    end
  end
end
