class Booking < ApplicationRecord
  belongs_to :super_hero
  belongs_to :user

  validates :starting_date, :ending_date, presence: true, availability: true
  validates :end_date_after_start_date

  private

  def end_date_after_start_date
    return if ending_date.blank? || starting_date.blank?

    if ending_date < starting_date
      errors.add(:ending_date, "must be after the start date")
    end
  end
end
