class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :games_won, :games_played, :game_round_win
end
