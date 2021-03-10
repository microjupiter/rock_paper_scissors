class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :games_won
      t.integer :games_played
      t.integer :game_round_wins

      t.timestamps
    end
  end
end
