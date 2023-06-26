class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :ChefName
      t.integer :ChefAge
      t.string :Nationality

      t.timestamps
    end
  end
end
