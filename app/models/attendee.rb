class Attendee < ActiveRecord::Base
  belongs_to :school
  belongs_to :ip, class_name: 'IP'
  has_many :attendee_skills, dependent: :destroy
  has_many :skill, through: :attendee_skills
  has_many :tickets, dependent: :destroy
  has_many :events, through: :tickets
end
