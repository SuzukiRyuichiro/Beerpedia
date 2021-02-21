class AddImageUrlToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :imageURL, :string
  end
end
