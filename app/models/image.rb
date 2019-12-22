class Image < ApplicationRecord
  has_many :events
  has_many :pets

  validates :path, presence: true
end
