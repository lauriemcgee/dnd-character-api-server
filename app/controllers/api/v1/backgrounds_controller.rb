class Api::V1::BackgroundsController < ApplicationController
  def index
    @backgrounds = Background.all
    render "index.json.jbuilder"
  end
end
