class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_team

  has_many :user_ballparks
  # has_many :ballparks, through: :user_ballparks

end
