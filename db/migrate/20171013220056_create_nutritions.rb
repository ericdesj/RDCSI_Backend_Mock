class CreateNutritions < ActiveRecord::Migration[5.1]
  def change
    create_table :nutritions do |t|
      t.string :meal_name
      t.integer :quality
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
