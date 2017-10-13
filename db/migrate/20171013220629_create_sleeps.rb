class CreateSleeps < ActiveRecord::Migration[5.1]
  def change
    create_table :sleeps do |t|
      t.integer :duration
      t.integer :quality
      t.integer :times_awake
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
