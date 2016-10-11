class CreatePersonPunishments < ActiveRecord::Migration[5.0]
  def change
    create_table :person_punishments do |t|
      t.integer :punishment_id
      t.integer :person_id

      t.timestamps
    end
  end
end
