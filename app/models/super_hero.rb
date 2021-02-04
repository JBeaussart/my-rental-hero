class SuperHero < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates uniqueness: true
end
