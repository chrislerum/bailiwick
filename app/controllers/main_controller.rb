class MainController < ApplicationController
  def index
    @interests = Interest.all
  end
end
