class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :games_played, :games_played, :game_round_wins
  has_many :game_rounds
end
