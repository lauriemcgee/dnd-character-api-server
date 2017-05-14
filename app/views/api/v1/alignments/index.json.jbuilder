

json.array! @alignments.each do |alignment|
  json.id alignment.id
  json.name alignment.name
  json.abbrev alignment.abbrev
  json.description alignment.description
end