class UserBallpark < ApplicationRecord  
  belongs_to :user
  belongs_to :ballpark

  # validates :overall_experience, :concession_rating, :beauty_rating, :overall_price_rating, :crowd_rating, presence: true, numericality: { only_integer: true }
end
