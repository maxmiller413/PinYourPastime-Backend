class CreateBallparks < ActiveRecord::Migration[6.1]
  def change
    create_table :ballparks do |t|
      t.string :location
      t.string :home_team
      t.string :name
      t.string :year_opened
      t.string :capacity
      t.string :nickname

      t.timestamps
    end
  end
end
