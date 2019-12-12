class Report < ApplicationRecord
  belongs_to :report_type
  has_many :images, as: :owner

  validates :title, :report_type_id, presence: true
end
