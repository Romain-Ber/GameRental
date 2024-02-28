class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]
  def index
    @bookings = Booking.all
  end

  def pending_booking
    @user = current_user
    @bookings = Booking.where(user_id: @user.id, status: "pending")
  end

  def pending_client
    @user = current_user
    @bookings = Booking.joins(:game).where(games: { user_id: @user.id })
  end

  def show
    @game_marker = {
      lat: @booking.game.latitude,
      lng: @booking.game.longitude
    }
  end

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @user = current_user
    @booking = Booking.new(params_booking)
    @booking.game = @game
    @booking.user = @user
    @booking.date_begin = Date.today
    @booking.status = "pending"
    if @booking.save
      redirect_to game_path(@game)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def params_booking
    params.require(:booking).permit(:date_begin, :date_end, :rating, :review, :message, :game_id, :user_id, :status)
  end
end
