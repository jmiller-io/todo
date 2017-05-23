class AdventuresController < ApplicationController

  def index
    @adventures = Adventure.all
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def new
  end

  def create
    @adventure = Adventure.new(adventure_params)

    @adventure.save
    redirect_to @adventure
  end

  private
    def adventure_params
      params.require(:adventure).permit(:what, :where, :when, :with)
    end

end
