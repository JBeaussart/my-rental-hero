class Booking < ApplicationRecord
  belongs_to :super_hero
  belongs_to :user

  validates :starting_date, :ending_date, presence: true

end
