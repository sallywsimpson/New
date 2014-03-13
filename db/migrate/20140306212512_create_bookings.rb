class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string  :reservation_id
      t.string :user_id
      t.string :party_size


      t.timestamps
    end
  end
end
