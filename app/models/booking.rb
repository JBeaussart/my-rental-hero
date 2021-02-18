class Booking < ApplicationRecord
  belongs_to :super_hero
  belongs_to :user

  validates :starting_date, :ending_date, presence: true

  def get_date(date)
    if date.length <= 4 || date.class.nil?
      return "Date inconnue"
    else
      d = Date.parse(date)
    return "#{d.day} #{d.month} #{d.year}"
    end
  end

end
