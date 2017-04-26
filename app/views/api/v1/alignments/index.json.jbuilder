json.array! @alignments.each do |alignment|
  json.id alignment.id
  json.name alignment.name
end