json.array! @characters.each do |character|
      json.id character.id
      json.character_name character.character_name
      json.class character.class
      json.level character.level
      json.background character.background
      json.player_name character.player_name
      json.race character.race
      json.alignment character.alignment
      json.experience_points character.experience_points
      json.strength character.strength
      json.dexterity character.dexterity
      json.constitution character.constitution
      json.intelligence character.intelligence
      json.wisdom character.wisdom
      json.charisma character.charisma
      json.proficiency_bonus character.proficiency_bonus
      json.armor_class character.armor_class
      json.initiative character.intiative
      json.speed character.speed
      json.current_hit_points character.current_hit_points
      json.temporary_hit_points character.temporary_hit_points
      json.hit_dice character.hit_dice
      json.personality_traits character.personality_traits
      json.ideals character.ideals
      json.bonds character.bonds
      json.flaws character.flaws
      json.features_and_traits character.features_and_traits
      json.attacks_and_spellcasting character.attacks_and_spellcasting
      json.equipment character.equipment
      json.other_proficiencies_and_languages character.other_proficiencies_and_languages

end