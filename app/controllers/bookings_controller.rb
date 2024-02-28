class BookingsController < ApplicationController
  before_action :set_booking, only: %i[]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

  def create
    # t
    @game = Game.find(params[:game_id])
    @user = current_user
    @booking = Booking.new(params_booking)
    @booking.game = @game
    @booking.user = @user
    @booking.date_begin = Date.today
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
    params.require(:booking).permit(:date_begin, :date_end, :rating, :review, :message, :game_id, :user_id)
  end
end
