class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.integer :participante_id

      t.timestamps
    end
  end
end
