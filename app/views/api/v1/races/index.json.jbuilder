json.array! @races.each do |race|
  json.id race.id
  json.name race.name
  json.size race.size
  json.sizeInfo race.sizeInfo
  json.speed race.speed
  json.language race.language
  json.langInfo race.langInfo
end