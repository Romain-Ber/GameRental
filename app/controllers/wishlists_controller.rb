class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[destroy]
  def index
    @user = current_user
    @wishlists = Wishlist.where(user_id: @user.id)
  end

  def create
    # Check if the wishlist item already exists for the user and game
    existing_wishlist_item = Wishlist.find_by(user_id: current_user.id, game_id: params[:game_id])
    if existing_wishlist_item
      # If the item already exists, destroy it
      existing_wishlist_item.destroy
      head :no_content
    else
      # Otherwise, create a new wishlist item
      @wishlist = Wishlist.new(user_id: current_user.id, game_id: params[:game_id])

      if @wishlist.save
        head :no_content
      else
        head :unprocessable_entity
      end
    end
  end

  def destroy
    @wishlist.destroy
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def params_wishlist
    params.require(:wishlist).permit(:game_id, :user_id)
  end
end
