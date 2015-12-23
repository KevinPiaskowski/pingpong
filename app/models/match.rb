class Match < ActiveRecord::Base
  validates :player1_id, presence: true
  validates :player2_id, presence: true
  has_many :games
end
