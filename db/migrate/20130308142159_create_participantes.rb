class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.integer :user_id

      t.timestamps
    end
  end
end
