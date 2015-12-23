class Game < ActiveRecord::Base
  validates :p1_score, presence: true
  validates :p1_score, presence: true
  has_many :players, through: :matches
  belongs_to :match
end
