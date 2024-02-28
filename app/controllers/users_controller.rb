class UsersController < ApplicationController
  def index
    @users = User.all
    @games = Game.all
    
  end
end
