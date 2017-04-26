class Api::V1::CharClassesController < ApplicationController
  def index
    @char_classes = CharClass.all
    render "index.json.jbuilder"
  end
end
