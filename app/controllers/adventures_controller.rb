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

  def edit
    @adventure = Adventure.find(params[:id])
  end

  def create
    @adventure = Adventure.new(adventure_params)

    if @adventure.save
      redirect_to @adventure
    else
      render 'new'
    end
  end

  def update
    @adventure = Adventure.find(params[:id])

    if @adventure.update(adventure_params)
      redirect_to @adventure
    else
      render 'edit'
    end
  end

  def destroy
    @adventure = Adventure.find(params[:id])
    @adventure.destroy
    redirect_to adventures_path
  end

  private
    def adventure_params
      params.require(:adventure).permit(:what, :where, :when, :with)
    end

end
