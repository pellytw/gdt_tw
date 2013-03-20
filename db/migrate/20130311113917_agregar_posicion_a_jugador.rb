class AgregarPosicionAJugador < ActiveRecord::Migration
  def up
  	add_column :jugadors, :posicion_id, :integer
  end

  def down
  	remove_column :jugadors, :posicion_id
  end
end