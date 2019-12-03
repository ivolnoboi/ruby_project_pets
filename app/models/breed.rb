class Breed < ApplicationRecord
  has_many :descriptions

  validates :name, presence: true, uniqueness: true
end
