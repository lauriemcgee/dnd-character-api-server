class Api::V1::RacesController < ApplicationController
  def index
    @races = Race.all
    render "index.json.jbuilder"
  end
end
