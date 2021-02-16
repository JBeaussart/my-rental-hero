class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :starting_date
      t.integer :ending_date

      t.timestamps
    end
  end
end
