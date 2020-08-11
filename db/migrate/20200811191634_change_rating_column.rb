class ChangeRatingColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_id, :integer
    remove_column :ratings, :wine_id, :integer
    add_column :ratings, :user_wine, :integer
  end
end
