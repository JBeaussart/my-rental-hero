class AddDateAndReviewToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :starting_date, :integer
    add_column :bookings, :ending_date, :integer
    add_column :bookings, :review, :integer
  end
end
