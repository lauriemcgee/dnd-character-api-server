class Character < ApplicationRecord
  belongs_to :user
  has_many :character_skills
  has_many :races
  has_many :char_classes
  has_many :alignments
  has_many :skills, through: :character_skills

end
