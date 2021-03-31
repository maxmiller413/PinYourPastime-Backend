class BallparkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :home_team, :year_opened, :capacity, :nickname, :image 

has_many :user_ballparks
has_many :users, through: :user_ballparks
end
