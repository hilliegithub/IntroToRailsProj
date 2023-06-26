class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :RestaurantName
      t.string :LocationLatitude
      t.string :LocationLongitude
      t.string :Cuisine

      t.timestamps
    end
  end
end
