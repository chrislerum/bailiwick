class HindrancesController < ApplicationController
  def show
    @hindrance = Hindrance.find(params[:id])
  end
end
