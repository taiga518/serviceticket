class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :to_name
      t.integer :gift_type
      t.text :message
      t.string :delivery_method
      t.string :to_email
      t.string :from_name
      t.string :from_email

      t.timestamps
    end
  end
end
