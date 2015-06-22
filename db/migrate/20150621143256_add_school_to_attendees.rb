class AddSchoolToAttendees < ActiveRecord::Migration
  def change
    add_reference :attendees, :school, index: true
    add_foreign_key :attendees, :schools
  end
end
