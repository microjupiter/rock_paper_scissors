class GameRoundsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :game_id
end