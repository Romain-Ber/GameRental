class AddRatingToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :rating, :integer
  end
end
