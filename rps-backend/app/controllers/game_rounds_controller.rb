class GameRoundsController < ApplicationController
  before_action :set_game_round, only: [:show, :update, :destroy]

  # GET /game_rounds
  def index
    @game_rounds = GameRound.all

    render json: @game_rounds
  end

  # GET /game_rounds/1
  def show
    render json: @game_round
  end

  # POST /game_rounds
  def create
    @game_round = GameRound.new(game_round_params)

    if @game_round.save
      render json: @game_round, status: :created, location: @game_round
    else
      render json: @game_round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_rounds/1
  def update
    if @game_round.update(game_round_params)
      render json: @game_round
    else
      render json: @game_round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_rounds/1
  def destroy
    @game_round.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_round
      @game_round = GameRound.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_round_params
      params.fetch(:game_round, {})
    end
end
