class CreateRecipeHops < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_hops do |t|

      t.timestamps
    end
  end
end
