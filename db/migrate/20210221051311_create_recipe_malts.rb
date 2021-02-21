class CreateRecipeMalts < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_malts do |t|

      t.timestamps
    end
  end
end
