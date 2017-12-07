class AddForeignKeyToPlays < ActiveRecord::Migration[5.1]
  def change
    change_table :bookings do |t|
      t.foreign_key :items 
    end
  end
end
