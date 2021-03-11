class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :computer_id
  belongs_to :user
  belongs_to :computer
  has_many :game_rounds
end
