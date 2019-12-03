class Report < ApplicationRecord
  belongs_to :report_type
  has_many :images

  validates :title, :report_type_id, presence: true
end
