class UserBallparkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  
  belongs_to :ballpark
end
