class GalaxiesController < ApplicationController
  def show
    @galaxy = Galaxy.find(params[:id])
  end
end
