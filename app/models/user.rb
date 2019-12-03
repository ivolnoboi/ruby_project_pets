class User < ApplicationRecord
  has_many :pets
  has_many :events

  validates :login, :email, presence: true, uniqueness: true
  validates :name, :password, presence: true
end
