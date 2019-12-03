class Description < ApplicationRecord
  belongs_to :breed
  has_one :pet

  validates :breed_id, :sex, :color, presence: true

  before_validation :ensure_age_no_negative

  private

  def ensure_age_no_negative
    this.errors << 'Age must be positive' if age < 0
  end
end
