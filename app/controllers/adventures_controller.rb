class AdventuresController < ApplicationController
  def new
  end

  def create
    render plain: params[:adventure].inspect
  end
end
