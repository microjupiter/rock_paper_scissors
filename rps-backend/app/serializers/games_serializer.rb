class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :computer_id
end
