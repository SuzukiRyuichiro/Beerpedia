class AddRecipesToRecipeHops < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipe_hops, :recipe, null: false, foreign_key: true
  end
end
