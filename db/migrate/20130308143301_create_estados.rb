class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.boolean :titular
      t.boolean :no_suma_puntos
      t.boolean :capitan
      t.integer :goles
      t.integer :goles_de_penal
      t.boolean :figura
      t.boolean :chenemigo
      t.boolean :roja
      t.boolean :valla_invicta
      t.integer :penales_errados
      t.integer :penales_atajados
      t.float :puntaje_dario
      t.float :puntaje_total_fecha
      t.integer :fecha_id
      t.integer :jugador_id

      t.timestamps
    end
  end
end
