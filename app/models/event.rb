class Event < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_one_attached :avatar

  validates :title, :event_date, :user_id, :location_id, :event_description, presence: true
end
