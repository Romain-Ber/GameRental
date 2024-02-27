class RemoveReviewIdFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :review_id
  end
end
