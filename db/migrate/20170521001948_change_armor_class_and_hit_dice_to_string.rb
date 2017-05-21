class ChangeArmorClassAndHitDiceToString < ActiveRecord::Migration[5.0]
  def change
    change_column :characters, :hit_dice, :string
    change_column :characters, :armor_class, :string
  end
end
