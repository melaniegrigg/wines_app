class RemoveUserWineColumnRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_wine, :integer
  end
end
