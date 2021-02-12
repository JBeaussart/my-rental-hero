class SuperHero < ApplicationRecord
  belongs_to :user
  has_many :bookings

  def unavailable_dates
    bookings.pluck(:starting_date, :ending_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
