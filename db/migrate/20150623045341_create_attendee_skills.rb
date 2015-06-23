class CreateAttendeeSkills < ActiveRecord::Migration
  def change
    create_table :attendee_skills, :id => false do |t|
      t.references :attendee, index: true
      t.references :skill, index: true

      t.timestamps null: false
    end
    add_foreign_key :attendee_skills, :attendees
    add_foreign_key :attendee_skills, :skills
  end
end
