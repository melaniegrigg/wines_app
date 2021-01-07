class AddVintnerToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :vintner, :string
  end
end
