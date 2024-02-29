class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[]
  def index
    @user = current_user
    @wishlists = Wishlist.where(user_id: @user.id)
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def params_wishlist
    params.require(:wishlist).permit(:game_id, :user_id)
  end
end
