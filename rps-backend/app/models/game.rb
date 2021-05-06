class Game < ApplicationRecord
  belongs_to :user, optional: false
  validates :user_id, presence: true
end