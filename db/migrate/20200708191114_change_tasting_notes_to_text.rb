class ChangeTastingNotesToText < ActiveRecord::Migration[6.0]
  def change
    change_column :wines, :tasting_notes, :text
  end
end
