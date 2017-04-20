class AddAbbreviationsAndDescriptionsToAlignments < ActiveRecord::Migration[5.0]
  def change
    add_column :alignments, :abbrev, :string
    add_column :alignments, :description, :string
  end
end
