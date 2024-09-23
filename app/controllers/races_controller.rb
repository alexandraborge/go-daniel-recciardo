class RacesController < ApplicationController
  def index
    Race.all
  end
end
