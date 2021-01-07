class RemoveTypeColumnTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :type, :string
  end
end
