class Attendee < ActiveRecord::Base
  belongs_to :school
  has_many :attendee_skills, dependent: :destroy
  has_many :skills, through: :attendee_skills
  has_many :tickets, dependent: :destroy
  has_many :events, through: :tickets

  validates :email, uniqueness: true
end
