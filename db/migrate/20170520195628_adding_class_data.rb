class AddingClassData < ActiveRecord::Migration[5.0]
  def change
    add_column :char_classes, :armor_class, :string
    add_column :char_classes, :hit_dice, :string
    add_column :char_classes, :num_skills, :integer
    add_column :char_classes, :weapons, :string
  end
end
