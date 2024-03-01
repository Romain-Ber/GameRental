module ApplicationHelper
  def game_in_wishlist?(game)
    wishlist_items = Wishlist.where(user_id: current_user.id)
    wishlist_items.exists?(game_id: game.id)
  end
end
