class AddBeersToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes, :beer, null: false, foreign_key: true
  end
end
