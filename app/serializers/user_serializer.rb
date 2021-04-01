class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_team, :wish_lists, :visit_lists

  has_many :user_ballparks
  # has_many :ballparks, through: :user_ballparks

end
