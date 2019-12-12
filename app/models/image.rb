class Image < ApplicationRecord
  has_many :events
  has_many :pets
  belongs_to :owner, polymorphic: true

  validates :path, presence: true
end
