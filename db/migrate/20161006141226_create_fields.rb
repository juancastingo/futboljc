class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.integer :nr
      t.integer :peopleAmount
      t.decimal :precio
      t.integer :club_id

      t.timestamps
    end
  end
end
