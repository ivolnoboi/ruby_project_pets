class Event < ApplicationRecord
  belongs_to :location
  belongs_to :user

  validates :title, :event_date, :user_id, :location_id, :event_description, presence: true
end
