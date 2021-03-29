# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserBallpark.destroy_all
User.destroy_all
Ballpark.destroy_all

UserBallpark.reset_pk_sequence
User.reset_pk_sequence
Ballpark.reset_pk_sequence

doug = User.create(name: 'doug', favorite_team: 'mets')

max = User.create(name: 'max', favorite_team: 'yankees')

yankee = Ballpark.create(location: 'Bronx, NY', home_team: 'NY Yankees', name: 'Yankee Stadium', year_opened: '2009', capacity: '47309', nickname: 'House that Jeter built', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Le_Yankee_Stadium.jpg/550px-Le_Yankee_Stadium.jpg')

mets = Ballpark.create(location: 'Flushing, Queens, NY', home_team: 'NY Mets', name: 'Citi Field', year_opened: '2009', capacity: '41922', nickname: nil, image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Citi_Field_Night_Game.jpg/600px-Citi_Field_Night_Game.jpg')

user_ballpark_1 = UserBallpark.create(user: doug, ballpark: mets, overall_experience: 1, concession_rating: 1, beauty_rating: 1, overall_price_rating: 1, crowd_rating: 1, comments: nil, visited: false, wishlist: false)

user_ballpark_2 = UserBallpark.create(user: max, ballpark: yankee, overall_experience: 2, concession_rating: 2, beauty_rating: 2, overall_price_rating: 2, crowd_rating: 2, comments: nil, visited: false, wishlist: false)

puts '***** SEEDED *****'