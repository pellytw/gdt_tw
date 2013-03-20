class CreatePosicionTacticas < ActiveRecord::Migration
  def change
    create_table :posicion_tacticas do |t|
      t.integer :tactica_id
      t.integer :posicion_id
      t.date :fecha_desde
      t.date :fecha_hasta

      t.timestamps
    end
  end
end
