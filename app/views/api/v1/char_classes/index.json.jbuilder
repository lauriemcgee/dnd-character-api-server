json.array! @char_classes.each do |char_class|
  json.id char_class.id
  json.name char_class.name
  json.blurb char_class.blurb
  json.armorClass char_class.armor_class
  json.hitDice char_class.hit_dice
  json.numSkills char_class.num_skills
  json.charWeapons char_class.weapons
end