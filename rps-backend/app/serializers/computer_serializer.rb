class ComputerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :game_round_wins, :guess
end