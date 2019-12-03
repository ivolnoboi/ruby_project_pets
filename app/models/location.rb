class Location < ApplicationRecord
  has_many :pets
  has_many :events

  validates :city, :street, :house, presence: true
end
