class RemoveColumnsFromWine < ActiveRecord::Migration[6.0]
  def change
    remove_column :wines, :rating, :decimal, precision: 2, scale: 1
    remove_column :wines, :region, :string
    remove_column :wines, :vintage, :integer
    remove_column :wines, :tasting_notes, :text
    remove_column :wines, :pairings, :string
    remove_column :wines, :vintner, :string
    add_column :wines, :color, :string
  end
end
