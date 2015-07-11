class Skill < ActiveRecord::Base
  before_save :lowercase

  has_many :attendee_skills, dependent: :destroy
  has_many :attendees, through: :attendee_skills

  validates :name, uniqueness: true

  def lowercase
    self.name = self.name.downcase
  end
end
