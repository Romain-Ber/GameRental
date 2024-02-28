class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  def index
    @games = Game.all
    @markers = @games.geocoded.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude
      }
    end
  end

  def my_offers
    @games = Game.all
  end

  def show
    @game_marker = {
      lat: @game.latitude,
      lng: @game.longitude
    }
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game), notice: "L'offre de jeu a été créée avec succès."
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end


  def update
    if @game.update(params_game)
      redirect_to game_path(@game), notice: "L'offre de jeu a été mise à jour avec succès."
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def params_game
    params.require(:game).permit(:name, :game_type, :content, :price, :photos)
  end
end
