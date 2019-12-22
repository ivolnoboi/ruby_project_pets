class Pet < ApplicationRecord
  belongs_to :type_pet
  belongs_to :description
  belongs_to :location
  belongs_to :user

  validates :name, :type_pet_id, :description_id, :location_id, :user_id, presence: true
end
