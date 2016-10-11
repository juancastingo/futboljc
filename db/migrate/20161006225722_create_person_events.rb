class CreatePersonEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :person_events do |t|
      t.integer :person_id
      t.integer :event_id

      t.timestamps
    end
  end
end
