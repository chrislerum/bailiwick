class ExcusesController < ApplicationController
  def show
    @excuse = Excuse.find(params[:id])
  end
end
