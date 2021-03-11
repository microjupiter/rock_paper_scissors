class GameRoundsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :game_id
  belongs_to :game
end
