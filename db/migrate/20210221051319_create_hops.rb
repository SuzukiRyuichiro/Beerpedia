class CreateHops < ActiveRecord::Migration[6.1]
  def change
    create_table :hops do |t|
      t.string :name

      t.timestamps
    end
  end
end
