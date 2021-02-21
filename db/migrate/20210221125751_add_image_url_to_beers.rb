class AddImageUrlToBeers < ActiveRecord::Migration[6.1]
  def change
    add_column :beers, :imageURL, :string
  end
end
