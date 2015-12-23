class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      render 'new'
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def index
    @players = Player.all
  end

  def edit

  end

  def update

  end

  def destroy

  end
  # Validate data before passing it back to action
  private
    def player_params
      params.require(:player).permit(:name)
    end
end
