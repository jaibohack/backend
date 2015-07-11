class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :full_name, null: false
      t.string :email, index: true, unique: true, null: false
      t.integer :age, null: false
      t.string :github
      t.string :linkedin
      t.references :school, index: true, null: false

      t.timestamps null: false
    end
  end
end
