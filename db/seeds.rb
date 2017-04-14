Race.create()
Race.create()
Race.create()
Race.create()

CharClass.create()
CharClass.create()
CharClass.create()
CharClass.create()
CharClass.create()

50.times do
  Character.create( 
  character_name: Faker::GameOfThrones.character,
  char_class: Faker::StarWars.droid,
  level: Faker::Number.number(1),
  background: Faker::Demographic.race,
  player_name: Faker::Name.first_name,
  race: Faker::Cat.breed,
  alignment: Faker::StarWars.specie,
  experience_points: Faker::Number.number(1),
  strength: Faker::Number.number(2),
  dexterity: Faker::Number.number(2),
  constitution: Faker::Number.number(2),
  intelligence: Faker::Number.number(2),
  wisdom: Faker::Number.number(2),
  charisma: Faker::Number.number(2),
  proficiency_bonus: Faker::Number.number(1),
  armor_class: Faker::Number.number(2),
  initiative: Faker::Number.number(2),
  speed: Faker::Number.number(2),
  current_hit_points: Faker::Number.number(2),
  temporary_hit_points: Faker::Number.number(2),
  hit_dice: "1d8",
  personality_traits: Faker::StarWars.quote,
  ideals: Faker::HarryPotter.quote,
  bonds: Faker::HarryPotter.quote,
  flaws: Faker::HarryPotter.quote,
  features_and_traits: Faker::Superhero.power,
  attacks_and_spellcasting: Faker::Superhero.power,
  equipment: Faker::StarWars.vehicle,
  other_proficiencies_and_languages: Faker::Demographic.educational_attainment
  )
end

puts "Done!"