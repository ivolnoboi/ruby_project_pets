class Pet < ApplicationRecord
  belongs_to :type_pet
  belongs_to :description
  belongs_to :location
  belongs_to :user
  has_many_attached :avatars

  validates :name, :type_pet_id, :description_id, :location_id, :user_id, presence: true
end
