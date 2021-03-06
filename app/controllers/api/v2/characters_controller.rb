class Api::V2::CharactersController < ApplicationController
  def index
    @characters = Character.all
    render "index.json.jbuilder"
  end
  def create
    @character = Character.new(
      character_name: params[:character_name],
      char_class: params[:char_class],
      level: params[:level],
      background: params[:background],
      player_name: params[:player_name],
      race: params[:race],
      alignment: params[:alignment],
      experience_points: params[:experience_points],
      strength: params[:strength],
      dexterity: params[:dexterity],
      constitution: params[:constitution],
      intelligence: params[:intelligence],
      wisdom: params[:wisdom],
      charisma: params[:charisma],
      proficiency_bonus: params[:proficiency_bonus],
      armor_class: params[:armor_class],
      initiative: params[:initiative],
      speed: params[:speed],
      current_hit_points: params[:current_hit_points],
      temporary_hit_points: params[:temporary_hit_points],
      hit_dice: params[:hit_dice],
      personality_traits: params[:personality_traits],
      ideals: params[:ideals],
      bonds: params[:bonds],
      flaws: params[:flaws],
      features_and_traits: params[:features_and_traits],
      attacks_and_spellcasting: params[:attacks_and_spellcasting],
      equipment: params[:equipment],
      other_proficiencies_and_languages: params[:other_proficiencies_and_languages]
      )
    @character.save
    redirect_to "/characters/#{@character.id}"
  end
  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def update
    @character = Character.find_by(id: params[:id])
    @character.character_name = params[:character_name] || @character.character_name
    @character.char_class = params[:char_class] ||  @character.char_class 
    @character.level = params[:level] || @character.level
    @character.background = params[:background] || @character.background
    @character.payer_name = params[:player_name] || @character.payer_name
    @character.race = params[:race] || @character.race
    @character.alignment = params[:alignment] || @character.alignment
    @character.experience_points = params[:experience_points] || @character.experience_points
    @character.strength = params[:strength] || @character.strength
    @character.dexterity = params[:dexterity] || @character.dexterity
    @character.constitution = params[:constitution] || @character.constitution
    @character.intelligence = params[:intelligence] || @character.intelligence
    @character.wisdom = params[:wisdom] || @character.wisdom
    @character.charisma = params[:charisma] || @character.charisma
    @character.proficiency_bonus = params[:proficiency_bonus] || @character.proficiency_bonus
    @character.armor_class = params[:armor_class] || @character.armor_class
    @character.initiative = params[:initiative] || @character.initiative
    @character.speed = params[:speed] || @character.speed
    @character.current_hit_points = params[:current_hit_points] || @character.current_hit_points
    @character.temporary_hit_points = params[:temporary_hit_points] || @character.temporary_hit_points
    @character.hit_dice = params[:hit_dice] || @character.hit_dice
    @character.personality_traits = params[:personality_traits] || @character.personality_traits
    @character.ideals = params[:ideals] || @character.ideals
    @character.bonds = params[:bonds] || @character.bonds
    @character.flaws = params[:flaws] ||  @character.flaws
    @character.features_and_traits = params[:features_and_traits] ||  @character.features_and_traits
    @character.attacks_and_spellcasting = params[:attacks_and_spellcasting] ||  @character.attacks_and_spellcasting
    @character.equipment = params[:equipment] || @character.equipment
    @character.other_proficiencies_and_languages = params[:other_proficiencies_and_languages] || @character.other_proficiencies_and_languages
    @character.save
    render "show.json.jbuilder"
  end
  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
    render json: {message: "Deleted it for ya!"}
  end

end
