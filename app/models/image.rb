class Image < ApplicationRecord
  has_many :events
  has_many :pets
  belongs_to :report

  validates :path, presence: true
end
