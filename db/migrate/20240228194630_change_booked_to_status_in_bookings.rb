class ChangeBookedToStatusInBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :booked
    add_column :bookings, :status, :string
  end
end
