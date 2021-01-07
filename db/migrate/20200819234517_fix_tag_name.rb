class FixTagName < ActiveRecord::Migration[6.0]
  def change
    rename_column :wine_tags, :tags_id, :tag_id
  end
end
