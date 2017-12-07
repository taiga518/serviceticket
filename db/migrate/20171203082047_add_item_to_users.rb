class AddItemToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :item, foreign_key: true
  end
end
