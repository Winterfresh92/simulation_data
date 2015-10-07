class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.float :play_time
      t.float :moving_time
      t.float :race_time
      t.float :idle_time
      t.integer :collisions
      t.integer :items_collected
      t.integer :powerups_collected
      t.string :difficulty
      t.integer :won

      t.timestamps null: false
    end
  end
end
