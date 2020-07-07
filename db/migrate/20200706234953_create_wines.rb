class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :varietal
      t.string :region
      t.integer :vintage
      t.string :tasting_notes
      t.string :pairings

      t.timestamps
    end
  end
end
