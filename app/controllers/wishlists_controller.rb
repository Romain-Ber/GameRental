class WishlistsController < ApplicationController
  def index
    @user = current_user
    @wishlists = Wishlist.where(user_id: @user.id)
  end
end
