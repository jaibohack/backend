class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, index: true, unique: true, null: false

      t.timestamps null: false
    end

    add_foreign_key :attendees, :schools   
  end
end
