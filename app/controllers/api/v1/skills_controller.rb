class Api::V1::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render "index.json.jbuilder"
  end
end
