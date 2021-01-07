class AddTypeIdColumnTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :type_id, :integer
  end
end
