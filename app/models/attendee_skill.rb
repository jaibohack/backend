class AttendeeSkill < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :skill
end
