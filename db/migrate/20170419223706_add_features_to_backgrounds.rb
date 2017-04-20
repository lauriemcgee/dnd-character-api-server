class AddFeaturesToBackgrounds < ActiveRecord::Migration[5.0]
  def change
    add_column :backgrounds, :toolProf, :string
    add_column :backgrounds, :equipment, :text
    add_column :backgrounds, :features, :text
  end
end
