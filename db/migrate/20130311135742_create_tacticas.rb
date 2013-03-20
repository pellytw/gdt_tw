class CreateTacticas < ActiveRecord::Migration
  def change
    create_table :tacticas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
