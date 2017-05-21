class AddingBondsPersonaityTraitsAndFlaws < ActiveRecord::Migration[5.0]
  def change
    add_column :backgrounds, :personality_traits, :string
    add_column :backgrounds, :ideals, :string
    add_column :backgrounds, :bonds, :string
    add_column :backgrounds, :flaws, :string
  end
end
