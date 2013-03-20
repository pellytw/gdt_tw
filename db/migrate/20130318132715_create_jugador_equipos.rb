class CreateJugadorEquipos < ActiveRecord::Migration
  def change
    create_table :jugador_equipos do |t|
      t.integer :equipo_id
      t.integer :jugador_id
      t.date :fecha_desde
      t.date :fecha_hasta

      t.timestamps
    end
  end
end
