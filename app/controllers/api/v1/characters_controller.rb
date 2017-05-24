class Api::V1::CharactersController < ApplicationController
  def create
    character_name = params[:characterName]
    char_class = CharClass.find_by(name: params[:charClass])
    background = Background.find_by(name: params[:background])
    player_name = params[:playerName]
    race = Race.find_by(name: params[:race])
    alignment = Alignment.find_by(name: params[:alignment])
    @character = Character.create(
      character_name: character_name,
      char_class: char_class.name,
      level: 1,
      background: background.name,
      player_name: player_name,
      race: race.name,
      alignment: alignment.abbrev,
      experience_points: 0,
      strength: race.strength + 8,
      dexterity: race.dex + 12,
      constitution: race.con + 14,
      intelligence: race.intell + 13,
      wisdom: race.wis + 10,
      charisma: race.char + 8,
      proficiency_bonus: 0,
      armor_class: char_class.armor_class,
      initiative: 0,
      speed: race.speed,
      current_hit_points: 0,
      temporary_hit_points: 0,
      hit_dice: char_class.hit_dice,
      personality_traits: background.personality_traits,
      ideals: background.ideals,
      bonds: background.bonds,
      flaws: background.flaws,
      features_and_traits: ' ',
      attacks_and_spellcasting: ' ',
      equipment: background.equipment + ' ' + char_class.weapons,
      other_proficiencies_and_languages: race.language + ' ' + background.features
      )
    # redirect_to "/characters/#{@character.id}"
    render "show.json.jbuilder"
  end

  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update

  end

  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
    render json: {message: "Deleted it for ya!"}
  end

end
