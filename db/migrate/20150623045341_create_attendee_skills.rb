class CreateAttendeeSkills < ActiveRecord::Migration
  def change
    create_table :attendee_skills do |t|
      t.references :attendee, index: true, null: false
      t.references :skill, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :attendee_skills, :attendees
    add_foreign_key :attendee_skills, :skills
  end
end
