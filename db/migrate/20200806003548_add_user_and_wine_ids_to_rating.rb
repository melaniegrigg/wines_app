class AddUserAndWineIdsToRating < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :user_id, :integer
    add_column :ratings, :wine_id, :integer
  end
end
