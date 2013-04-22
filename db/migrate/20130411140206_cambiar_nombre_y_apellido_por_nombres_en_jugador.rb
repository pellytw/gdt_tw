class CambiarNombreYApellidoPorNombresEnJugador < ActiveRecord::Migration
  def up
  	add_column :jugadors, :nombres, :string
  	remove_column :jugadors, :nombre
  	remove_column :jugadors, :apellido
  end

  def down
  	remove_column :jugadors, :nombres
  	add_column :jugadors, :nombre, :string
  	add_column :jugadors, :apellido, :srting
  end
end
