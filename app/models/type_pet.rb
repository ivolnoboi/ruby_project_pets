class TypePet < ApplicationRecord
  has_one :pet

  validates :pet_type, presence: true, uniqueness: true
end
