class PagesController < ApplicationController
  def index
    @char_classes = CharClass.all
    @races = Race.all
    @backgrounds = Background.all
    @alignments = Alignment.all
    render "index.html"
  end
end
