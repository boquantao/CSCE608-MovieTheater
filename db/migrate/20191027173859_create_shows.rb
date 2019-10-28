class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :price
      t.integer :movie_id
      t.integer :cinema_id
      
      t.timestamps
    end
    add_index :shows, :movie_id
    add_index :shows, :cinema_id
  end
end
