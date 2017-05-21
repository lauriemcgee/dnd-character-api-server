json.array! @backgrounds.each do |background|
  json.id background.id
  json.name background.name
  json.blurb background.blurb
  json.toolProf background.toolProf
  json.backEquip background.equipment
  json.backFeatures background.features
  json.personalityTraits background.personality_traits
  json.ideals background.ideals
  json.bonds background.bonds
  json.flaws  background.flaws
end
