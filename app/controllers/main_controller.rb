class MainController < ApplicationController
  def index
    @interests = Interest.all
    @hindrances = Hindrance.all
    @excuses = Excuse.all
  end

  def blank

  end
end
