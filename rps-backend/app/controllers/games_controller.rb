class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]
  # GET /games
  def index
    @games = Game.all
    render json: @games, include: [:user]
  end
  # GET /games/1
  def show
    game = Game.find(params[:id])
    render json: @game
  end
  # POST /games
  def create
    user = User.find_or_create_by(:name => params[:user][:name])
    @game = user.games.build(:score => params[:score])
    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end
  # DELETE /games/1
  def destroy
    @game.destroy
    render json: @game
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:score)
    end
end