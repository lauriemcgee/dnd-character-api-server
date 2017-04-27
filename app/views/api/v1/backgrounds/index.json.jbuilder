json.array! @backgrounds.each do |background|
  json.id background.id
  json.name background.name
  json.blurb background.blurb
end
