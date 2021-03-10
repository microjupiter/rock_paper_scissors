class GamesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :computer_id
end
