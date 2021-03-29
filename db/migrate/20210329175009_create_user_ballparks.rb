class CreateUserBallparks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ballparks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ballpark, null: false, foreign_key: true
      t.integer :overall_experience
      t.integer :concession_rating
      t.integer :beauty_rating
      t.integer :overall_price_rating
      t.integer :crowd_rating
      t.string :comments
      t.boolean :visited
      t.boolean :wishlist

      t.timestamps
    end
  end
end
