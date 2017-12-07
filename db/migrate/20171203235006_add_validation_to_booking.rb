class AddValidationToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :validation, :boolean, default: false
  end
end
