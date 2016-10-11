class CreatePunishments < ActiveRecord::Migration[5.0]
  def change
    create_table :punishments do |t|
      t.string :name
      t.string :description
      t.integer :points

      t.timestamps
    end
  end
end
