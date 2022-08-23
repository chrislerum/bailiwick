class MainController < ApplicationController

  def index
    @interests = Interest.all
    @hindrances = Hindrance.all
    @excuses = Excuse.all
  end

  def blank
  end

  def astro
    @galaxies = Galaxy.includes(:stars, :planets)
  end
end
