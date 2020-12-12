class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :event_attendings
  has_many :attendees, through: :event_attendings

  scope :past, -> { where("date < ?", Date.current) }
  scope :upcoming, -> { where("date >= ?", Date.current) }

  # def self.past
  #   where("date < ?", Date.current)
  # end

  # def self.upcoming
  #   where("date >= ?", Date.current)
  # end
end
