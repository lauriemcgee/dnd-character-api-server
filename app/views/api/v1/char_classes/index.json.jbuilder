json.array! @char_classes.each do |char_class|
  json.id char_class.id
  json.name char_class.name
  json.blurb char_class.blurb
end