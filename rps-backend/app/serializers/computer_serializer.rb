class ComputerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :game_round_wins, :guess
  has_many :games
end