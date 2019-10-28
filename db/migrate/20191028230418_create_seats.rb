class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.integer :show_id
      t.boolean :booked
      t.integer :seat_number

      t.timestamps
    end
    add_index :seats, :show_id
  end
end
