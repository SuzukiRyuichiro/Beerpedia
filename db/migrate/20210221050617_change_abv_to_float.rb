class ChangeAbvToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :beers, :abv, :float
  end
end
