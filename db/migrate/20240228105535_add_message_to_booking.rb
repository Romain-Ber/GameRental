class AddMessageToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :message, :string
  end
end
