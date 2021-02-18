class Booking < ApplicationRecord
  belongs_to :super_hero
  belongs_to :user

  validates :starting_date, :ending_date, presence: true

  def get_date(date)
    if date.length <= 4 || date.class.nil?
      return "Date inconnue"
    else
      d = Date.parse(date)
    return "#{d.day}/#{d.month}/#{d.year}"
    end
  end

  def days_of_rental
    ending_date = Date.parse(self.ending_date)
    starting_date = Date.parse(self.starting_date)
    result = ending_date - starting_date
    result.to_i
  end

  def total_price
    result = self.days_of_rental * self.super_hero.price_cents
  end
end
