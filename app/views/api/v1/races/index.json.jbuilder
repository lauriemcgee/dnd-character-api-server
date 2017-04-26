json.array! @races.each do |race|
  json.id race.id
  json.name race.name
end