class AddEndAttoBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :end_at, :datetime
  end
end
