class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render "index.json.jbuilder"
  end
  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
  end

end
