class Game < ApplicationRecord
  belongs_to :user, optional: false
  validates :user_id, presence: true

  def self.arr_to_json(arr)
    arr.map{|g| g.instance_to_json}
  end

  def instance_to_json
    {
      id: self.id,
      score: self.score,
      user: {
        id: self.user.id,
        name: self.user.name
      }
    }
  end
end