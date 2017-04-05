# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170405005933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "character_name"
    t.string   "char_class"
    t.integer  "level"
    t.string   "background"
    t.string   "player_name"
    t.string   "race"
    t.string   "alignment"
    t.integer  "experience_points"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "proficiency_bonus"
    t.integer  "armor_class"
    t.integer  "initiative"
    t.integer  "speed"
    t.integer  "current_hit_points"
    t.integer  "temporary_hit_points"
    t.integer  "hit_dice"
    t.string   "personality_traits"
    t.string   "ideals"
    t.string   "bonds"
    t.string   "flaws"
    t.text     "features_and_traits"
    t.text     "attacks_and_spellcasting"
    t.string   "equipment"
    t.text     "other_proficiencies_and_languages"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
