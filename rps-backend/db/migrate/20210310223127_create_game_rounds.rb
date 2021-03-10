class CreateGameRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :game_rounds do |t|

      t.timestamps
    end
  end
end
