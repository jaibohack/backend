class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :venue, null: false
      t.date :begins_on, null: false
      t.date :registration_ends_on, null: false
      t.integer :attendees_limit, null: false

      t.timestamps null: false
    end
  end
end
