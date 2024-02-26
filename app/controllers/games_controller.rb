class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]
  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def params_game
    params.require(:game).permit(:name, :type, :content, :price, :photos)
  end
end
