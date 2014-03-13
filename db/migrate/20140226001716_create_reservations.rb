class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :day
      t.string :time
      # t.string :time1
      # t.string :time2
      # t.string :time3
      # t.string :time4
      # t.string :party_size
      t.string  :booking_id
      t.string :user_id
      # t.boolean :available
      # t.text :quantity
      # t.text :userID

      t.timestamps
    end
  end
end
