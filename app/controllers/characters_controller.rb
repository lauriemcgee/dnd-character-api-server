class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render "index.json.jbuilder"
  end
  def create
    @character = Character.new(
      character_name: = params[:character_name],
      class: = params[:class],
      level: = params[:level],
      background: = params[:background],
      player_name: = params[:player_name],
      race: = params[:race],
      alignment: = params[:alignment],
      experience_points: = params[:experience_points],
      strength: = params[:strength],
      dexterity: = params[:dexterity],
      constitution: = params[:constitution],
      intelligence: = params[:intelligence],
      wisdom: = params[:wisdom],
      charisma: = params[:charisma],
      proficiency_bonus: = params[:proficiency_bonus],
      armor_class: = params[:armor_class],
      initiative: = params[:initiative],
      speed: = params[:speed],
      current_hit_points: = params[:current_hit_points],
      temporary_hit_points: = params[:temporary_hit_points],
      hit_dice: = params[:hit_dice],
      personality_traits: = params[:personality_traits],
      ideals: = params[:ideals],
      bonds: = params[:bonds],
      flaws: = params[:flaws],
      features_and_traits: = params[:features_and_traits],
      attacks_and_spellcasting: = params[:attacks_and_spellcasting],
      equipment: = params[:equipment],
      other_proficiencies_and_languages: = params[:other_proficiencies_and_languages]
      )
    @character.save
    redirect_to "/characters/#{@character.id}"
  end
  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

end
