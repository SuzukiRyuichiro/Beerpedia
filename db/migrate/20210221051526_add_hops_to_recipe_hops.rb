class AddHopsToRecipeHops < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipe_hops, :hop, null: false, foreign_key: true
  end
end
