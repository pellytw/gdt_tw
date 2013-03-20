class CreateFechas < ActiveRecord::Migration
  def change
    create_table :fechas do |t|
      t.integer :numero
      t.string :nombre_torneo
      t.datetime :fecha_desde
      t.datetime :fecha_hasta

      t.timestamps
    end
  end
end
