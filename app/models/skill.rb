class Skill < ActiveRecord::Base
  has_many :attendee_skills, dependent: :destroy
  has_many :attendees, through: :attendee_skills
end
