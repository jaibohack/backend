class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :full_name
      t.string :email
      t.integer :age
      t.string :github
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
