class Game < ApplicationRecord
  belongs_to :user
  belongs_to :computer
  has_many :game_rounds
end
