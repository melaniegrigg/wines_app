class ChangeRatingToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :ratings, :rating, :decimal, precision:2 , scale: 1
  end
end
