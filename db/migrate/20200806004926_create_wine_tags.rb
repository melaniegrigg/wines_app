class CreateWineTags < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_tags do |t|
      t.integer :wine_id
      t.integer :tags_id

      t.timestamps
    end
  end
end
