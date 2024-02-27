class AddReferencesToWishlists < ActiveRecord::Migration[7.1]
  def change
    add_reference :wishlists, :user, foreign_key: true
    add_reference :wishlists, :game, foreign_key: true
  end
end
