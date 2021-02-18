class ChangeIntegerInDateTimeInBookings < ActiveRecord::Migration[6.0]
  def change
    change_table :bookings do |t|
      t.change :starting_date, :string
      t.change :ending_date, :string
    end
  end
end
