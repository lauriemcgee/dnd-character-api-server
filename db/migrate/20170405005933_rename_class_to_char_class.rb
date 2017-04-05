class RenameClassToCharClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :characters, :class, :char_class
  end
end
