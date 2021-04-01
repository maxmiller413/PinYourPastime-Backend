class UserBallparkSerializer < ActiveModel::Serializer
  attributes :id, :ballpark_id, :overall_experience, :concession_rating, :beauty_rating, :overall_price_rating, :crowd_rating, :comments, :visited, :wishlist

  belongs_to :ballpark
end
