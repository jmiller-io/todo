class AdventuresController < ApplicationController

  def index
    @adventures = Adventure.all
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.new(adventure_params)

    if @adventure.save
      redirect_to @adventure
    else
      render 'new'
    end
  end

  private
    def adventure_params
      params.require(:adventure).permit(:what, :where, :when, :with)
    end

end
