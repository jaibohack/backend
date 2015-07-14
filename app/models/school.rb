class School < ActiveRecord::Base
  before_save :lowercase
  has_many :attendees

  validates :name, uniqueness: true

  def lowercase
    self.name = self.name.downcase
  end
end
