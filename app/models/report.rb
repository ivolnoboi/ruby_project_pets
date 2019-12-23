class Report < ApplicationRecord
  belongs_to :report_type
  has_many_attached :avatars

  validates :title, :report_type_id, presence: true
end
