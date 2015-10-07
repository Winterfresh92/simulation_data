class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.date :birthday
      t.integer :games_played

      t.timestamps null: false
    end
  end
end
