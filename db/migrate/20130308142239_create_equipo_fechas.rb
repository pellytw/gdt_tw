class CreateEquipoFechas < ActiveRecord::Migration
  def change
    create_table :equipo_fechas do |t|
      t.integer :equipo_id
      t.integer :jugador_id
      t.integer :fecha_id
      t.date :fecha_desde
      t.date :fecha_hasta

      t.timestamps
    end
  end
end
