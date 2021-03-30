class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_team

  has_many :user_ballparks

end
