class CreatePosicions < ActiveRecord::Migration
  def change
    create_table :posicions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
