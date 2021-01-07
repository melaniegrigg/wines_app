class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :notes
      t.string :vintner

      t.timestamps
    end
  end
end
