class RenameStrengthInRaceModel < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :str, :strength
  end
end
