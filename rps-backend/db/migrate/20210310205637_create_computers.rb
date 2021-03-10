class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.integer :game_round_wins
      t.string :guess

      t.timestamps
    end
  end
end
