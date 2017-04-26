json.array! @skills.each do |skill|
  json.id skill.id
  json.name skill.name
end