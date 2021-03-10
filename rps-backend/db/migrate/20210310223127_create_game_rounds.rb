class CreateGameRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :game_rounds do |t|
      t.integer :game_id

      t.timestamps
    end
  end
end
