class AddRatingColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :rating, :decimal, precision: 2, scale: 1
  end
end
