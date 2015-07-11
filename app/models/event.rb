class Event < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  has_many :attendees, through: :tickets

  validates :name, uniqueness: true
end
