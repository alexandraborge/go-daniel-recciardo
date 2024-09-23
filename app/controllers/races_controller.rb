class RacesController < ApplicationController
  def index
    # I want to save important details from this response to the DB
    # It will be used to create the association with the drivers
    race_data = HTTParty.get("https://api.openf1.org/v1/meetings?year=2024")
  end
end
