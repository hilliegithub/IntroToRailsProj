class AddForeignKeyReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :chefs, :restaurant, null: false, foreign_key: true
  end
end
