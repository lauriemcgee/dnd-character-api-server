class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :class
      t.integer :level
      t.string :background
      t.string :player_name
      t.string :race
      t.string :alignment
      t.integer :experience_points
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :proficiency_bonus
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.integer :current_hit_points
      t.integer :temporary_hit_points
      t.integer :hit_dice
      t.string :personality_traits
      t.string :ideals
      t.string :bonds
      t.string :flaws
      t.text :features_and_traits
      t.text :attacks_and_spellcasting
      t.string :equipment
      t.text :other_proficiencies_and_languages

      t.timestamps
    end
  end
end
