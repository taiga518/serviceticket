class ChangeModelName < ActiveRecord::Migration[5.1]
  def change
    rename_table :posts, :items
  end
end
