class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id

  has_many :user_ballparks
end
