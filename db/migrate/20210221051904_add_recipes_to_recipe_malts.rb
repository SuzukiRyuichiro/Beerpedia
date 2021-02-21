class AddRecipesToRecipeMalts < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipe_malts, :recipe, null: false, foreign_key: true
  end
end
