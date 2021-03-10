class ComputerSerializer < ActiveModel::Serializer
  attributes :id, :game_round_wins, :guess
end
