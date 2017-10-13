class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :type
      t.integer :duration
      t.integer :intensity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
