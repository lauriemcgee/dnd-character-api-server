class AddBlurbToMultipleTables < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :blurb, :text
    add_column :backgrounds, :blurb, :text
    add_column :char_classes, :blurb, :text
  end
end
