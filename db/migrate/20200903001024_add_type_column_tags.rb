class AddTypeColumnTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :type, :string
  end
end
