class AgregarDisponibleAJugador < ActiveRecord::Migration
  def up
  	add_column :jugadors, :disponible, :boolean
  end

  def down
  	remove_column :jugadors, :disponible
  end
end