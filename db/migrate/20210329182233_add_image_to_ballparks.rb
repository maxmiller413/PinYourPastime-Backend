class AddImageToBallparks < ActiveRecord::Migration[6.1]
  def change
    add_column :ballparks, :image, :string
  end
end
