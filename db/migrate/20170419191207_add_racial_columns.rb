class AddRacialColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :size, :string
    add_column :races, :sizeInfo, :string
    add_column :races, :speed, :integer
    add_column :races, :language, :string
    add_column :races, :langInfo, :text
    add_column :races, :str, :integer
    add_column :races, :dex, :integer
    add_column :races, :con, :integer
    add_column :races, :intell, :integer
    add_column :races, :wis, :integer
    add_column :races, :char, :integer
    add_column :races, :features, :text
    add_column :races, :ageSugg, :text
    add_column :races, :alignSugg, :text
  end
end
