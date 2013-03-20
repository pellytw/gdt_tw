class CreateJugadors < ActiveRecord::Migration
  def change
    create_table :jugadors do |t|
      t.string :nombre
      t.string :apellido
      t.integer :club_id

      t.timestamps
    end
  end
end
