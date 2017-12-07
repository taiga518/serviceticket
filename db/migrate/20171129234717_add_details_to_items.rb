class AddDetailsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :price, :integer
    add_column :items, :reputation, :integer
    add_column :items, :location, :string
  end
end
