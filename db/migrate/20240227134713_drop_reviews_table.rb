class DropReviewsTable < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :bookings, :reviews
    drop_table :reviews
    add_column :bookings, :rating, :integer
    add_column :bookings, :review, :string
  end
end
