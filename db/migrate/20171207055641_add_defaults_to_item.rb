class AddDefaultsToItem < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :reputation, :integer, :default => 3
    change_column :items, :price, :integer, :default => 3
  end
end
