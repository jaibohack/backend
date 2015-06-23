class Attendee < ActiveRecord::Base
  belongs_to :school
  has_many :attendee_skills, dependent: :destroy
  has_many :skill, through: :attendee_skills
end
