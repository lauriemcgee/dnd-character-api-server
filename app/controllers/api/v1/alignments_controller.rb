class Api::V1::AlignmentsController < ApplicationController
  def index
    @alignments = Alignment.all
    render "index.json.jbuilder"
  end
end
